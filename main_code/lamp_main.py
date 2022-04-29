## IMPORTS ##
from sympy import true
import light_service
import camera_service
import utilities
import threading

## VARIABLES ##
lock = threading.Lock()

camera_switch = True
finger_tracking_switch = True
auto_light_switch = True
light_switch = True

camera = threading.Thread(target=camera_service.camera_process, args=(finger_tracking_switch))
light = threading.Thread(target=light_service.light_process, args=())

## FUNCTIONS ##
def check_pin(pin):
    return True

def camera_change():
    if check_pin("camera"):
        if not camera_switch:
            camera_switch = True
            start_camera()
    else:
        if camera_switch:
            camera_switch = False
            stop_camera()

def finger_change():
    if check_pin("finger"):
        if not finger_tracking_switch:
            finger_tracking_switch = True
            stop_camera()
            start_camera()
    else:
        if finger_tracking_switch:
            finger_tracking_switch = False
            stop_camera()
            start_camera()

def auto_change():
    if check_pin("auto"):
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
    light_service.start_light()
    light.start()

def stop_light():
    light_service.stop_light()
    light.join()

def check_adjust():
    if check_pin("increase_button"):
        light_service.brighter()
    if check_pin("decrease_button"):
        light_service.dimmer()

## MAIN LOOP ##
while True:
    camera_change()
    finger_change()
    auto_change()
    if not auto_light_switch:
        check_adjust()