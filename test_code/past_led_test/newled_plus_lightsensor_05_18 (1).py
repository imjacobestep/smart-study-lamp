
import time
import board
import adafruit_tsl2591
import neopixel
from datetime import datetime
import RPi.GPIO as GPIO
from gpiozero import Button

PINcool=12
PINwarm=13
PINMode=5
PINBrightness=23
PINColor=24


GPIO.setmode(GPIO.BCM)

GPIO.setup(PINMode, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(PINBrightness, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(PINColor, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(PINcool, GPIO.OUT)
GPIO.setup(PINwarm, GPIO.OUT)


btnBrightness=Button(PINBrightness)
btnColor=Button(PINColor)

soft_pwm_cool = GPIO.PWM(PINcool, 20000)
soft_pwm_warm = GPIO.PWM(PINwarm, 20000)
brightness=50
colorindex=0
soft_pwm_cool.start(0)
soft_pwm_warm.start(0)


green = [0,255, 40]
pixel_pin = board.D10
num_pixels = 60

ORDER = neopixel.GRB

pixels = neopixel.NeoPixel(
    pixel_pin, num_pixels, brightness=1, auto_write=False, pixel_order=ORDER
)

pixels.fill(green)
pixels.show()


target_lux=65




currenttime=datetime.now().strftime("%H:%M:%S")
if "06:00:00" < currenttime < "17:00:00":
    colorindex=0
else:
    colorindex=2
    
IsManual=False


def set_color(colind):
    global oldcolind,oldbrightness

    if colind!=oldcolind or brightness!=oldbrightness:
        print(colind,brightness)
        if colind==0:
            soft_pwm_cool.ChangeDutyCycle(brightness)
            soft_pwm_warm.ChangeDutyCycle(0)
        elif colind==2:
            soft_pwm_cool.ChangeDutyCycle(0)
            soft_pwm_warm.ChangeDutyCycle(brightness)
        else:
            soft_pwm_cool.ChangeDutyCycle(brightness/2)
            soft_pwm_warm.ChangeDutyCycle(brightness/2)
        oldcolind=colind
        oldbrightness=brightness
                

i2c = board.I2C()  

sensor = adafruit_tsl2591.TSL2591(i2c)

#sensor.gain = adafruit_tsl2591.GAIN_LOW #(1x gain)
# sensor.gain = adafruit_tsl2591.GAIN_MED #(25x gain, the default)
sensor.gain = adafruit_tsl2591.GAIN_HIGH #(428x gain)
#sensor.gain = adafruit_tsl2591.GAIN_MAX #(9876x gain)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_100MS (100ms, default)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_200MS (200ms)

brightness=50
oldcolind=colorindex
oldbrightness=brightness

set_color(colorindex)

i=0
out=[]
while True:

    IsManual = GPIO.input(5)


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
        lux = sensor.visible/1e6 #sensor.lux
        error=target_lux-lux
        print(f"lux={lux},   brightness={brightness}, error={error}")
        if error!=0:
            brightness=brightness+0.1*error
            if brightness>100: brightness=100
            if brightness<0: brightness=0
            set_color(colorindex)
            print(f"***lux={lux},   brightness={brightness}, error={error}")
   
    time.sleep(0.2)
    
    
# SPDX-FileCopyrightText: 2021 ladyada for Adafruit Industries
# SPDX-License-Identifier: MIT

# Simple demo of the TSL2591 sensor.  Will print the detected light value
# every second.
    
# You can optionally change the gain and integration time:
#sensor.gain = adafruit_tsl2591.GAIN_LOW #(1x gain)
# sensor.gain = adafruit_tsl2591.GAIN_MED #(25x gain, the default)
# sensor.gain = adafruit_tsl2591.GAIN_HIGH #(428x gain)
#sensor.gain = adafruit_tsl2591.GAIN_MAX #(9876x gain)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_100MS (100ms, default)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_200MS (200ms)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_300MS (300ms)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_400MS (400ms)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_500MS (500ms)
# sensor.integration_time = adafruit_tsl2591.INTEGRATIONTIME_600MS (600ms)
                
        
