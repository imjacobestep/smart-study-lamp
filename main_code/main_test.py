
import camera_service
import environment_service
import utilities
import RPi.GPIO as GPIO
import cv2
import mediapipe as mp
from picamera import PiCamera
from picamera.array import PiRGBArray
from io import BytesIO
import time

mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands
x_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
y_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

brightnesses = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
colors = [0, 1, 2]

camera = PiCamera()
rawCapture = PiRGBArray(camera)
camera.resolution = (1920, 1080)
camera.framerate = 30
rawCapture = PiRGBArray(camera, size=(1920, 1080))
time.sleep(0.1)
#camera.use_video_port = True
stream = BytesIO()

GPIO.setmode(GPIO.BCM)
GPIO.setup(utilities.pin_table["auto switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #auto switch
GPIO.setup(utilities.pin_table["led brightness"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED brightness button
GPIO.setup(utilities.pin_table["led color"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED color button
GPIO.setup(utilities.pin_table["camera switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #camera switch

def test_learning_env():
    environment_service.play_sound(0)
    environment_service.special_color(True) #create learning environment

    camera_service.speak_definition("test")
    utilities.wait(1)

    environment_service.play_sound(1)
    environment_service.special_color(False) #exit learning environment
    utilities.wait(2)

def test_adjustment():
    environment_service.current_brightness = 0
    for b in range(10):
        environment_service.manual_brightness()
        utilities.wait(1)
    environment_service.current_brightness = 1
    for c in range(3):
        environment_service.manual_color()
        utilities.wait(1)

def test_auto():
    start = time.time()
    while time.time() - start < 5:
        environment_service.auto_adjust

def test_tracking():
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
                        camera_service.track_movement(image, x,y)
                        mp_drawing.draw_landmarks(
                            image,
                            hand_landmarks,
                            mp_hands.HAND_CONNECTIONS,
                            mp_drawing_styles.get_default_hand_landmarks_style(),
                            mp_drawing_styles.get_default_hand_connections_style())
                # Flip the image horizontally for a selfie-view display.
                #cv2.imshow('MediaPipe Hands', image)
                cv2.imshow('MediaPipe Hands', cv2.resize(camera_service.draw_rectangle(image=image, x=x, y=y), (852,480)))
                rawCapture.truncate(0)
                if cv2.waitKey(5) & 0xFF == 27:
                    break

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