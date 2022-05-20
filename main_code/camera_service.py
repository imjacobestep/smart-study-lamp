## IMPORTS ##
from skimage import io
import pytesseract
from io import BytesIO
from matplotlib import pyplot as plt
import cv2
import mediapipe as mp
import utilities
import environment_service
from PIL import Image as im
import numpy as np
from numpy import asarray
from picamera import PiCamera
from picamera.array import PiRGBArray
from io import BytesIO
import time
import lamp_main

class Camera_service:
    ## VARIABLES ##
    #pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
    mp_drawing = mp.solutions.drawing_utils
    mp_drawing_styles = mp.solutions.drawing_styles
    mp_hands = mp.solutions.hands
    camera = PiCamera()
    rawCapture = PiRGBArray(camera)
    camera.resolution = (1920, 1080)
    camera.framerate = 30
    rawCapture = PiRGBArray(camera, size=(1920, 1080))
    time.sleep(0.1)
    #camera.use_video_port = True
    stream = BytesIO()
    last_x, last_y, last_moved = 0,0,time.time()
    x_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    y_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    ## FUNCTIONS ##
    def start_camera():
        global cap
        cap = cv2.VideoCapture(-1)

    def stop_camera():
        global cap
        cap.release()

    def track_movement_old(image, x, y):
        if(len(x_pos) > 0):
            x_pos.pop(0)
            y_pos.pop(0)
        x_pos.append(x)
        y_pos.append(y)
        point = False

        if( ( (x_pos[len(x_pos) - 1] - x_pos[0]) < 4 ) and ( (y_pos[len(y_pos) - 1] - y_pos[0]) < 4 ) and ( (y_pos[len(y_pos) // 2] - y_pos[0]) < 4 ) ):
            point = True
        else:
            point = False
        if(point):
            execute_point(image, x,y)
            print("point")

    def track_movement(image, x, y):
        global last_x, last_y, last_moved
        if (abs(last_x - x) < utilities.movement_margin) and (abs(last_y - y) < utilities.movement_margin) and (time.time()-last_moved < 2):
            execute_point(image, x, y)
        last_moved = time.time()

    def execute_point(image, x,y):
        environment_service.play_sound(0)
        environment_service.special_color(True) #create learning environment

        #success, image = cap.read()
        processed_image = process_image(image, x, y)
        ocr_results = get_ocr(processed_image=processed_image)
        word_results = get_word(ocr_results)
        if word_results[0]:
            output_text = utilities.get_definition(word_results[1])
            utilities.speak(output_text)
        utilities.wait(1)

        environment_service.play_sound(1)
        environment_service.special_color(False) #exit learning environment
        utilities.wait(2)

    def get_ocr(processed_image):
        ocr_results = pytesseract.image_to_data(processed_image, output_type=pytesseract.Output.DICT)
        return ocr_results

    def process_image(image, x, y):
        left = x - (utilities.crop_dimensions['width']/2)
        top = y - utilities.crop_dimensions['height']
        right = x + (utilities.crop_dimensions['width']/2)
        bottom = y
        imdata = im.fromarray(image)
        cropped = imdata.crop((left, top, right, bottom))
        return cropped

    def draw_rectangle(x, y, image):
        imgName = "photo_x" + str(x) + "_y" + str(y) + ".jpg"
        #cv2.imwrite(filename=imgName,img = image)
        x = int(x)
        y = int(y)
        x1 = x - (utilities.crop_dimensions['width']/2)
        x2 = x + (utilities.crop_dimensions['width']/2)
        y1 = y
        y2 = y - utilities.crop_dimensions['height']
        triangle = [(x-10,y-30), (x, y-20), (x+10,y-30)]
        rect_image = cv2.rectangle(img= image, pt1=(x1, y1), pt2=(x2, y2), color=(0, 255, 0))
        poly_image = cv2.polylines(img=rect_image, pts=np.array([triangle]), color=(255, 0, 0), isClosed=True)
        return poly_image

    def get_word(ocr_results):
        fx = utilities.crop_dimensions['width']/2
        fy = utilities.crop_dimensions['height'] - 20
        for i in range(len(ocr_results['text'])):
            xTest = (fx > ocr_results['left'][i]) and ((fx-ocr_results['left'][i]) < ocr_results['width'][i])
            yTest = (fy > ocr_results['top'][i]) and ((fy-ocr_results['top'][i]) < ocr_results['height'][i])
            if(xTest and yTest and float(ocr_results["conf"][i]) > 0):
            #data = [i, ocr_results['text'][i], ocr_results['left'][i], ocr_results['top'][i], ocr_results['width'][i], ocr_results['height'][i]]
                found_word = ocr_results['text'][i]
                return(True, found_word)
        return (False, '----fail----')

    ## MAIN PROCESS ##
    def camera_loop(lock):
        x = 0
        y = 0
        #camera.start_preview()
        with mp_hands.Hands(
            min_detection_confidence=0.5,
            min_tracking_confidence=0.5) as hands:
                for frame in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
                    
                    image = frame.array

                    #image.flags.writeable = False
                    image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                    results = hands.process(image)

                    # Draw the hand annotations on the image.
                    image.flags.writeable = True
                    image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
                    image_height, image_width, _ = image.shape
                    if results.multi_hand_landmarks:
                        for hand_landmarks in results.multi_hand_landmarks:
                            x = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP].x * image_width
                            y = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP].y * image_height
                            print("Index fingertip at: " + str(x) + ", " + str(y))
                            #track_movement(x, y)
                            track_movement(image, x,y)
                            mp_drawing.draw_landmarks(
                                image,
                                hand_landmarks,
                                mp_hands.HAND_CONNECTIONS,
                                mp_drawing_styles.get_default_hand_landmarks_style(),
                                mp_drawing_styles.get_default_hand_connections_style())
                    # Flip the image horizontally for a selfie-view display.
                    #cv2.imshow('MediaPipe Hands', image)
                    cv2.imshow('MediaPipe Hands', cv2.resize(draw_rectangle(image=image, x=x, y=y), (852,480)))
                    rawCapture.truncate(0)
                    lock.aquire()
                    cont = lamp_main.camera_switch
                    lock.release()
                    if not cont:
                        break
        cap.release()