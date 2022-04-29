## IMPORTS ##
from sympy import true
import light_service
import camera_service
import utilities
import threading

## VARIABLES ##
lock = threading.Lock()

camera = threading.Thread(target=camera_service.camera_process, args=())
light = threading.Thread(target=light_service.light_process, args=())

camera_switch = True
finger_tracking_switch = True
auto_light_switch = True
light_switch = True

## FUNCTIONS ##
def check_Switches():
    print("checking things")

## MAIN LOOP ##