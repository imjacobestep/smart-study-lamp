## IMPORTS ##
from skimage import io
import string
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
#import lamp_main


## VARIABLES ##
stream = BytesIO()
last_x, last_y, last_moved = 0,0,time.time()

## FUNCTIONS ##

def track_movement(image, x, y):
    global last_x, last_y, last_moved
    xCheck = abs(last_x - x) <= utilities.movement_margin
    yCheck = abs(last_y - y) <= utilities.movement_margin
    delayCheck = time.time()-last_moved < 1
    if xCheck and yCheck and delayCheck:
        last_x, last_y = x, y
        execute_point(image, x, y)
    else:
        last_moved = time.time()
        last_x, last_y = x, y

def execute_point(image, x,y):
    #environment_service.play_sound(0)    
    processed_image = process_image(image, x, y)
    ocr_results = get_ocr(processed_image=processed_image)
    word_results = get_word(ocr_results)
    environment_service.special_color(True) #create learning environment
    if word_results[0]:
        output_text = utilities.get_definition(word_results[1])
        utilities.send_word(word_results[1])
        utilities.speak(output_text)
    utilities.wait(1)

    #environment_service.play_sound(1)
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
    img_gray = cv2.cvtColor(np.array(cropped), cv2.COLOR_BGR2GRAY)
    img_threshold = cv2.threshold(img_gray, 0, 255, cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]
    cv2.imwrite(filename="cropped_image.jpg",img = np.array(img_threshold))
    return img_threshold

def draw_rectangle(x, y, image):
    imgName = "photo_x" + str(x) + "_y" + str(y) + ".jpg"
    #cv2.imwrite(filename=imgName,img = image)
    x = int(x)
    y = int(y)
    x1 = int(x - (utilities.crop_dimensions['width']/2))
    x2 = int(x + (utilities.crop_dimensions['width']/2))
    y1 = y
    y2 = y - utilities.crop_dimensions['height']
    triangle = [(x-10,y-30), (x, y-utilities.finger_margin), (x+10,y-30)]
    rect_image = cv2.rectangle(img= image, pt1=(x1, y1), pt2=(x2, y2), color=(0, 255, 0))
    poly_image = cv2.polylines(img=rect_image, pts=np.array([triangle]), color=(255, 0, 0), isClosed=True)
    return poly_image

def get_word(ocr_results):
    fx = utilities.crop_dimensions['width']/2
    fy = utilities.crop_dimensions['height'] - utilities.finger_margin
    for i in range(len(ocr_results['text'])):
        xTest = (fx > ocr_results['left'][i]) and ((fx-ocr_results['left'][i]) < ocr_results['width'][i])
        yTest = (fy > ocr_results['top'][i]) and ((fy-ocr_results['top'][i]) < ocr_results['height'][i])
        if(xTest and yTest and float(ocr_results["conf"][i]) > 0):
        #data = [i, ocr_results['text'][i], ocr_results['left'][i], ocr_results['top'][i], ocr_results['width'][i], ocr_results['height'][i]]
            found_word = ocr_results['text'][i]
            found_word = found_word.translate(str.maketrans('', '', string.punctuation))
            found_word = found_word.lower()
            return(True, found_word)
    return (False, '----fail----')
'''
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
    cap.release()'''