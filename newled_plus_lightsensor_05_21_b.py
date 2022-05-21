
import time
import board
import adafruit_tsl2591
import neopixel
from datetime import datetime
import RPi.GPIO as GPIO
from gpiozero import Button
import pigpio
import numpy as np

from rpi_hardware_pwm import HardwarePWM as hpwm


# PINcool=18
# PINwarm=19
PINMode=5
PINBrightness=23
PINColor=24


GPIO.setmode(GPIO.BCM)

GPIO.setup(PINMode, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(PINBrightness, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(PINColor, GPIO.IN, pull_up_down=GPIO.PUD_UP)



btnBrightness=Button(PINBrightness)
btnColor=Button(PINColor)

pwm_cool=hpwm(pwm_channel=0,hz=20000)
pwm_warm=hpwm(pwm_channel=1,hz=20000)

pwm_cool.start(0)
pwm_warm.start(0)

green=[0,255,40]
pixel_pin = board.D10
num_pixels = 60

ORDER = neopixel.GRB

pixels = neopixel.NeoPixel(
    pixel_pin, num_pixels, brightness=1, auto_write=False, pixel_order=ORDER
)
pixels.fill(green)
pixels.show()

i2c = board.I2C()  
sensor = adafruit_tsl2591.TSL2591(i2c)
sensor.gain = adafruit_tsl2591.GAIN_HIGH


def set_color(colind):
    global oldcolind,oldbrightness,brightness

    if colind!=oldcolind or brightness!=oldbrightness:
        print(colind,brightness)
        if colind==0:
            pwm_cool.change_duty_cycle(brightness)
            pwm_warm.change_duty_cycle(0)
        elif colind==2:
            pwm_cool.change_duty_cycle(0)
            pwm_warm.change_duty_cycle(brightness)
        else:
            pwm_cool.change_duty_cycle(brightness/2)
            pwm_warm.change_duty_cycle(brightness/2)
        oldcolind=colind
        oldbrightness=brightness

currenttime=datetime.now().strftime("%H:%M:%S")
if "06:00:00" < currenttime < "17:00:00":
    colorindex=0
else:
    colorindex=2
    
IsManual=False





oldcolind=-1
oldbrightness=0
brightness=50
target_luxvalue=70
set_color(colorindex)


while True:

    IsManual = GPIO.input(PINMode)
    luxvalue = sensor.visible/1e6 #sensor.lux
    print(luxvalue)

    if IsManual:
        print("manual")
        
        if btnBrightness.is_pressed:
            brightness+=20
            if brightness>100:
                brightness=0
            set_color(colorindex)
            
        if btnColor.is_pressed:
            colorindex+=1
            if colorindex>2:
                colorindex=0
            set_color(colorindex)
            
    else:
        print("auto")
        
        currenttime = datetime.now().strftime("%H:%M:%S")
        if "06:00:00" < currenttime < "17:00:00":
            if colorindex!=0:
                colorindex=0
                set_color(colorindex)
        else:
            if colorindex!=2:
                colorindex=2
                set_color(colorindex)

        #print(colorindex)
        luxvalue = sensor.visible/1e6 #sensor.lux
        error=target_luxvalue-luxvalue
        print(f"lux={luxvalue},   brightness={brightness}, error={error}")
        if error!=0:
            brightness=brightness+0.1*error
            if brightness>100: brightness=100
            if brightness<0: brightness=0
            set_color(colorindex)
            print(f"***lux={luxvalue},   brightness={brightness}, error={error}")
   
    time.sleep(0.2)
    