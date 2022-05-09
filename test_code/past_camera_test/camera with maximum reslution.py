from picamera import PiCamera
from time import sleep

camera = PiCamera()
camera.resolution = (2592, 1944)
camera.framerate = 15

camera.start_preview(alpha =200)
for i in range(5):
    sleep(5)
    camera.capture('/home/sumayyah/Desktop/len 2/img%s.jpg' % i)
camera.stop_preview()
