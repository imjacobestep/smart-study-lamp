from picamera import PiCamera
from datetime import datetime
from time import sleep
from gpiozero import Button
from PIL import Image
from io import BytesIO

camera = PiCamera()
button = Button(14)
now = datetime.now()
camera.resolution = (2592, 1944)
camera.framerate = 15
stream = BytesIO

filename = ''

def take_photo_test():
    global filename
    filename = "book.jpg"
    camera.start_preview(alpha =200)
    sleep(5)
    camera.capture("/home/sumayyah/Desktop/{0}".format(filename))
    camera.stop_preview()

def take_photo():
    camera.start_preview()
    sleep(2)
    camera.capture(stream, format='jpeg')
    stream.seek(0)
    return Image.open(stream)
    
button.when_pressed = take_photo