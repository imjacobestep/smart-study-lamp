## IMPORTS ##
import environment_service
import camera_service as cam
import utilities
import threading
import RPi.GPIO as GPIO

## VARIABLES ##
lock = threading.Lock()

camera_switch = True

GPIO.setmode(GPIO.BCM)
GPIO.setup(utilities.pin_table["auto switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #auto switch
GPIO.setup(utilities.pin_table["led brightness"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED brightness button
GPIO.setup(utilities.pin_table["led color"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #LED color button
GPIO.setup(utilities.pin_table["camera switch"], GPIO.IN, pull_up_down=GPIO.PUD_UP) #camera switch

camera = threading.Thread(target=cam.camera_loop, args=(lock, ))

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
    #lock.release()
    camera.start()

def stop_camera():
    global lock, camera_switch
    #lock.acquire()
    camera_switch = False
    #lock.release()
    camera.join()

## MAIN LOOP ##
while True:
    camera_change()
    if check_pin("auto switch"):
        environment_service.auto_adjust()
    else:
        if check_pin("led color"):
            environment_service.manual_color()
        if check_pin("led brightness"):
            environment_service.manual_brightness()