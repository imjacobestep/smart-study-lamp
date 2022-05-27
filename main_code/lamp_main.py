## IMPORTS ##
import environment_service
import camera_service
import utilities
import threading
import RPi.GPIO as GPIO
import mediapipe as mp
from picamera import PiCamera
from picamera.array import PiRGBArray
from io import BytesIO
import time
import cv2

## VARIABLES ##
lock = threading.Lock()

camera_switch = True
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

GPIO.setmode(GPIO.BCM)
GPIO.setup(utilities.pin_table["auto switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #auto switch
GPIO.setup(utilities.pin_table["led brightness"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED brightness button
GPIO.setup(utilities.pin_table["led color"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED color button
GPIO.setup(utilities.pin_table["camera switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #camera switch

## FUNCTIONS ##
def check_pin(pin):
    if GPIO.input(utilities.pin_table[pin]):
        return True
    return False

def camera_change():
    global camera_switch
    if check_pin("camera switch"):
        if not camera_switch:
            start_camera()
            return
    else:
        if camera_switch:
            stop_camera()
            return
    print("no camera change")

def start_camera():
    global lock, camera_switch
    #lock.acquire()
    camera_switch = True
    print("camera on")
    #lock.release()
    camera.start()

def stop_camera():
    global lock, camera_switch
    #lock.acquire()
    camera_switch = False
    print("camera off")
    #lock.release()
    camera.join()

def camera_loop(lock):
    global cap, camera_switch
    cap = cv2.VideoCapture(-1)
    x,y = 0,0
    with mp_hands.Hands(
        min_detection_confidence=0.5,
        min_tracking_confidence=0.5) as hands:
            for frame in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
                image = frame.array
                image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                results = hands.process(image)
                image.flags.writeable = True
                image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
                image_height, image_width, _ = image.shape
                if results.multi_hand_landmarks:
                    for hand_landmarks in results.multi_hand_landmarks:
                        x = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP].x * image_width
                        y = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP].y * image_height
                        print("Index fingertip at: " + str(x) + ", " + str(y))
                        camera_service.track_movement(image, x,y)
                        mp_drawing.draw_landmarks(
                            image,
                            hand_landmarks,
                            mp_hands.HAND_CONNECTIONS,
                            mp_drawing_styles.get_default_hand_landmarks_style(),
                            mp_drawing_styles.get_default_hand_connections_style())
                cv2.imshow('MediaPipe Hands', cv2.resize(camera_service.draw_rectangle(image=image, x=x, y=y), (852,480)))
                rawCapture.truncate(0)
                lock.aquire()
                cont = camera_switch
                lock.release()
                if not cont:
                    break
    cap.release()

## MAIN LOOP ##
camera = threading.Thread(target=camera_loop, args=(lock, ))
while True:
    camera_change()
    if check_pin("auto switch"):
        environment_service.auto_adjust()
    else:
        if check_pin("led color"):
            environment_service.manual_color()
        if check_pin("led brightness"):
            environment_service.manual_brightness()