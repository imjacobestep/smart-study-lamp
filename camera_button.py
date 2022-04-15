from picamera import PiCamera
from datetime import datetime
from time import sleep
from gpiozero import Button

camera = PiCamera()
button = Button(14)
now = datetime.now()
camera.resolution = (2592, 1944)
camera.framerate = 15

filename = ''

def take_photo():
    global filename
    filename = "book.jpg"
    camera.start_preview(alpha =200)
    sleep(5)
    camera.capture("/home/sumayyah/Desktop/{0}".format(filename))
    camera.stop_preview()
    
button.when_pressed = take_photo