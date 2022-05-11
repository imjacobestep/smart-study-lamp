## IMPORTS ##
from skimage import io
import pytesseract
from io import BytesIO
from matplotlib import pyplot as plt
import cv2
from PyDictionary import PyDictionary
import pyttsx3
from sympy import false, true
#import mediapipe as mp
import mediapipe as mp
import utilities
import environment_service
from PIL import Image as im
from numpy import asarray

## VARIABLES ##
#pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
latest_page = None
dictionary = PyDictionary
mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands
x_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
y_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
#cap = cv2.VideoCapture(1)

## FUNCTIONS ##
def start_camera():
    global cap
    cap = cv2.VideoCapture(-1)

def stop_camera():
    global cap
    cap.release()

def track_movement(image, x, y):

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
        do_point(image, x,y)
        print("point")
    
    return None

def do_point(image, x,y):
    environment_service.play_sound(0)
    environment_service.set_color(utilities.colors_table["special"]) #create learning environment

    #success, image = cap.read()
    processed = process_image(image, x, y)
    data = pytesseract.image_to_data(processed, output_type=pytesseract.Output.DICT)
    word = get_word(x,y, data, processed)
    speak_definition(word)
    utilities.wait(1)

    environment_service.play_sound(1)
    environment_service.set_color(environment_service.colorseq[environment_service.current_color]) #exit learning environment
    utilities.wait(2)

def process_image(image, x, y):
    left = x - 300
    top = y - 300
    right = x + 300
    bottom = y

    img_gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    img_threshold = cv2.threshold(img_gray, 0, 255, cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]
    imdata = im.fromarray(img_threshold)
    cropped = imdata.crop((left, top, right, bottom))
    ret = asarray(cropped)
    return img_threshold

def get_word(x, y, data, image):
    #print('width: ', im.shape[1])
    #print('height:', im.shape[0])
    latest_page = data
    finger_x, finger_y = image.shape
    finger_x = finger_x/2
    total_boxes = len(data['text'])
    margin = 20
    for sequence_number in range(total_boxes):
        if float(latest_page['conf'][sequence_number]) >30:
            (x, y, w, h) = (latest_page['left'][sequence_number], latest_page['top'][sequence_number], latest_page['width'][sequence_number],  latest_page['height'][sequence_number])
            x2, y2 = x+w, y-h
            if( (x < finger_x < x2) and ((y-margin) < finger_y < y2) ):
                return latest_page['text'][sequence_number]
    return "rabbit"

def speak_definition(word):
    print(word)
    definition = ""
    #definition = dictionary.meaning(word)
    output = ("This word is pronounced " + str(word) + ". Here is its definition " + str(definition))
    print(output)
    pyttsx3.speak(output)

## MAIN PROCESS ##
def camera_process():
    with mp_hands.Hands(
        min_detection_confidence=0.5,
        min_tracking_confidence=0.5) as hands:
        while cap.isOpened():
            success, image = cap.read()
            if not success:
                print("Ignoring empty camera frame.")
                # If loading a video, use 'break' instead of 'continue'.
                continue

            # To improve performance, optionally mark the image as not writeable to
            # pass by reference.
            image.flags.writeable = False
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
                    print("Index fingertip at: " + x + ", " + y)
                    track_movement(image, x, y)
                    mp_drawing.draw_landmarks(
                        image,
                        hand_landmarks,
                        mp_hands.HAND_CONNECTIONS,
                        mp_drawing_styles.get_default_hand_landmarks_style(),
                        mp_drawing_styles.get_default_hand_connections_style())
            # Flip the image horizontally for a selfie-view display.
            #cv2.imshow('MediaPipe Hands', cv2.flip(image, 1))
            #if cv2.waitKey(5) & 0xFF == 27:
                #break
    #cap.release()