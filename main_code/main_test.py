from ctypes import util
import camera_service
import environment_service
import utilities
import RPi.GPIO as GPIO
import cv2
from sympy import false, true
import mediapipe as mp
#import lamp_main

mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands
x_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
y_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

GPIO.setmode(GPIO.BCM)
GPIO.setup(utilities.pin_table["auto switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #auto switch
GPIO.setup(utilities.pin_table["led brightness"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED brightness button
GPIO.setup(utilities.pin_table["led color"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED color button
GPIO.setup(utilities.pin_table["camera switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #camera switch

def test_learning_env():
    environment_service.play_sound(0)
    environment_service.set_color(utilities.colors_table["special"]) #create learning environment

    camera_service.speak_definition("test")

    environment_service.play_sound(1)
    environment_service.set_color(environment_service.current_color) #exit learning environment
    utilities.wait(5)

def test_adjustment():
    for i in range(10):
        environment_service.cycle_brightness
        utilities.wait(2)
    for i in range(3):
        environment_service.cycle_colors
        utilities.wait(2)

def test_auto():
    environment_service.start_light()
    utilities.wait(10)
    environment_service.stop_light()

def test_tracking():
    cap = cv2.VideoCapture(0)
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
                    print("Index fingertip at: " + x + ", " + y)
                    #track_movement(x, y)
                    camera_service.track_movement(x,y)
                    mp_drawing.draw_landmarks(
                        image,
                        hand_landmarks,
                        mp_hands.HAND_CONNECTIONS,
                        mp_drawing_styles.get_default_hand_landmarks_style(),
                        mp_drawing_styles.get_default_hand_connections_style())
            # Flip the image horizontally for a selfie-view display.
            cv2.imshow('MediaPipe Hands', cv2.flip(image, 1))
            if cv2.waitKey(5) & 0xFF == 27:
                break
    cap.release()

while True:
    userIn = input("what do you want to test? adj, env, cam, or auto: ")
    if userIn == "adj":
        test_adjustment()
    if userIn == "env":
        test_learning_env()
    if userIn == "cam":
        test_tracking()
    if userIn == "auto":
        test_auto()
    if userIn == "exit":
        break