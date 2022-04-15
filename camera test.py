#terminal commands:
# raspistill -o Desktop/image.jpg
# raspistill -o Desktop/image-small.jpg -w 640 -h 480
# raspivid -o Desktop/video.h264
#libcamera-still -o test.jpg
# sudo raspi-config

from picamera import PiCamera
from time import sleep

camera = PiCamera()

# camera.rotation = 180

camera.start_preview(alpha =200)
sleep(5)
camera.capture('/home/sumayyah/Desktop/tt.jpg')
camera.stop_preview()

# video recording
# camera.start_recording('/home/pi/Desktop/video.h264')
# sleep(5)
# camera.stop_recording()