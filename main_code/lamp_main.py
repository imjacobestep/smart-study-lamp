## IMPORTS ##
from sympy import true
import environment_service
import camera_service
import utilities
import threading
import time
from datetime import datetime
import RPi.GPIO as GPIO

## VARIABLES ##
lock = threading.Lock()

global camera_switch
camera_switch = True
global auto_light_switch
auto_light_switch = True
light_switch = True

GPIO.setmode(GPIO.BCM)
GPIO.setup(utilities.pin_table["auto switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #auto switch
GPIO.setup(utilities.pin_table["led brightness"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED brightness button
GPIO.setup(utilities.pin_table["led color"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED color button
GPIO.setup(utilities.pin_table["camera switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #camera switch

camera = threading.Thread(target=camera_service.camera_process, args=())
light = threading.Thread(target=environment_service.light_process, args=())

## FUNCTIONS ##
def check_pin(pin):
    if GPIO.input(utilities.pin_table[pin]):
        return True
    return False

def camera_change():
    if check_pin("camera switch"):
        if camera_switch:
            camera_switch = True
            start_camera()
    else:
        if camera_switch:
            camera_switch = False
            stop_camera()
    print("no camera change")

def auto_change():
    if check_pin("auto switch"):
        if not auto_light_switch:
            auto_light_switch = True
            start_light()
    else:
        if auto_light_switch:
            auto_light_switch = False
            stop_light()

def start_camera():
    camera_service.start_camera()
    camera.start()

def stop_camera():
    camera_service.stop_camera()
    camera.join()

def start_light():
    environment_service.start_light()
    light.start()

def stop_light():
    environment_service.stop_light()
    light.join()

def check_adjust():
    if check_pin("led color"):
        environment_service.cycle_colors()
    if check_pin("led brightness"):
        environment_service.cycle_brightness()

def setup():
    camera_switch = True
    auto_light_switch = True

## MAIN LOOP ##

while True:
    setup()
    camera_change
    auto_change
    if not auto_light_switch:
        check_adjust