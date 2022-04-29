## IMPORTS ##
from pyparsing import null_debug_action
import pytesseract
from io import BytesIO
from skimage import io
from matplotlib import pyplot as plt
import cv2
from PyDictionary import PyDictionary
import pyttsx3
from sympy import false, true
import mediapipe as mp
import utilities

## VARIABLES ##
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
latest_page = null
dictionary = PyDictionary
mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands
x_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
y_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
cap = null

## FUNCTIONS ##
def start_camera():
    cap = cv2.VideoCapture(0)

def stop_camera():
    cap.release()

def track_movement(x, y, finger_tracking):

    if(len(x_pos) > 0):
        x_pos.pop(0)
        y_pos.pop(0)
    x_pos.append(x)
    y_pos.append(y)

    swipe = False
    point = False

    if( (x_pos[len(x_pos) // 2] - x_pos[0]) > 200 ):
        swipe = True
    else:
        swipe = False

    if( ( (x_pos[len(x_pos) - 1] - x_pos[0]) < 4 ) and ( (y_pos[len(y_pos) - 1] - y_pos[0]) < 4 ) and ( (y_pos[len(y_pos) // 2] - y_pos[0]) < 4 ) ):
        point = True
    else:
        point = False

    if(swipe):
        page_turn()
        print("swipe")
    if(finger_tracking and point):
        get_definition(x,y)
        print("point")
    
    return null_debug_action

def get_definition(x,y):
    word = get_word(x,y)
    speak_definition(word)

def page_turn():
    utilities.wait(2)
    success, image = cap.read()
    latest_page = get_ocr(image)
    word_stuff()

def word_stuff():
    text = ''
    for i in range(len(latest_page['text'])):
        text += latest_page["text"][i]
    print("Do stuff with words")
    print(text)

def process_image(image):
    img_gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    img_threshold = cv2.threshold(img_gray, 0, 255, cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]
    return img_threshold

def get_ocr(image):
    return pytesseract.image_to_data(image, output_type=pytesseract.Output.DICT)

def get_word(finger_x, finger_y):
    total_boxes = len(latest_page['text'])
    margin = 5
    for sequence_number in range(total_boxes):
        if float(latest_page['conf'][sequence_number]) >30:
            (x, y, w, h) = (latest_page['left'][sequence_number], latest_page['top'][sequence_number], latest_page['width'][sequence_number],  latest_page['height'][sequence_number])
            x2, y2 = x+w, y-h
            if( (x < finger_x < x2) and ((y-margin) < finger_y < y2) ):
                return latest_page['text'][sequence_number]
    return ''

def speak_definition(word):
    definition = dictionary.meaning(word)
    output = f"This word is pronounced {word}. Here is its definition {definition}"
    pyttsx3.speak(output)

## MAIN PROCESS ##
def camera_process(finger_tracking):
    with mp_hands.Hands(
        model_complexity=0,
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
                    print(
                        f'Index finger tip coordinates: (',
                        f'{x}, '
                        f'{y})'
                    )
                    track_movement(x, y, finger_tracking)
                    mp_drawing.draw_landmarks(
                        image,
                        hand_landmarks,
                        mp_hands.HAND_CONNECTIONS,
                        mp_drawing_styles.get_default_hand_landmarks_style(),
                        mp_drawing_styles.get_default_hand_connections_style())
            # Flip the image horizontally for a selfie-view display.
            cv2.imshow('MediaPipe Hands', cv2.flip(image, 1))
            #if cv2.waitKey(5) & 0xFF == 27:
                #break
    #cap.release()