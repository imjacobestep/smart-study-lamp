## IMPORTS ##
import time
import board
import adafruit_tsl2591
import neopixel
import RPi.GPIO as GPIO
from datetime import datetime
import utilities
from rpi_hardware_pwm import HardwarePWM as hpwm

## VARIABLES ##
#setup
rgb_pin = board.D10 #pin connected to data input on strip, must be D10, D12, D18, or D21
rgb_pixels = 60 #number of neopixels
ORDER = neopixel.GRB #order of pixel colors
rgb_led = neopixel.NeoPixel(
    rgb_pin, rgb_pixels, brightness=1, auto_write=False, pixel_order=ORDER
)
rgb_led.brightness=1
rgb_led.pixel_order=neopixel.GRB

i2c = board.I2C() #sensor object, uses board's I2C bus, uses board.SCL and board.SDA
sensor = adafruit_tsl2591.TSL2591(i2c) #initialize sensor
adafruit_tsl2591.GAIN_HIGH

rgb_led.fill([0,0,0])
rgb_led.show()


#rgb
current_color = utilities.colors_table["neutral"]
current_brightness = 1.0

#main
# GPIO.setup(utilities.pin_table["cool led data"], GPIO.OUT)
# GPIO.setup(utilities.pin_table["warm led data"], GPIO.OUT)
pwm_cool = hpwm(pwm_channel=0,hz=20000)
pwm_warm = hpwm(pwm_channel=1,hz=20000)
pwm_cool.start(100)
pwm_warm.start(100)



#other
looping = True

## FUNCTIONS ##
def play_sound(sound):
    if sound == 0:
        print("play entrance sound")
    else:
        print("play exit sound")

def get_lux():
    return sensor.visible/1e6 #sensor.lux

## RGB LED ##
def rgb_toggle(switch):
    global current_brightness, current_color
    if switch:
        rgb_update(brightness=0.0, color=current_color)
    else:
        rgb_update(brightness=current_brightness, color=current_color)

def rgb_update(brightness, color):
    if brightness > 1.0:
        brightness = 1.0
    i=0
    for colorval in color:
        if colorval > 255:
            color[i] = 255
            
    global current_brightness, current_color
    value = tuple([x*brightness for x in color])
    rgb_led.fill(value)
    rgb_led.show()
    current_brightness, current_color = brightness, color

## Main LED ##
def main_toggle(switch):
    global current_brightness, current_color
    if switch:
        main_update(brightness=0.0, color=current_color)
    else:
        main_update(brightness=current_brightness, color=current_color)

def main_update(brightness, color):
    global current_brightness, current_color
    if color == utilities.colors_table["cool"]:
        pwm_cool.change_duty_cycle(brightness*100)
        pwm_warm.change_duty_cycle(0)
        print("Setting cool 100%")
    elif color == utilities.colors_table["warm"]:
        pwm_cool.change_duty_cycle(0)
        pwm_warm.change_duty_cycle(brightness*100)
        print("setting warm 100%")
    else:
        pwm_cool.change_duty_cycle(brightness*50)
        pwm_warm.change_duty_cycle(brightness*50)
        print("setting cool-warm 50-50")
        
    current_brightness, current_color = brightness, color

## Central Controls ##
def special_color(switch):
    global current_brightness, current_color, sensor
    if switch:
        current_color=utilities.colors_table["special"]
        #main_toggle(False)
        #main_update(brightness=current_brightness/2, color=current_color)
        rgb_update(brightness=current_brightness, color=utilities.colors_table["special"])
    else:
        rgb_update(brightness=current_brightness, color=current_color)
        main_update(brightness=current_brightness, color=current_color)

def auto_adjust():
    global current_brightness, current_color, sensor
    currenttime=datetime.now().strftime("%H:%M:%S")
    if "06:00:00" < currenttime < "17:00:00":
        current_color = utilities.colors_table["cool"]
    else:
        current_color = utilities.colors_table["warm"]
    lux = get_lux()
    print (f"lux = {lux}, brightness={current_brightness}")
    if lux<utilities.target_brightness and current_brightness<1.0:
        current_brightness += 0.1
    if lux>utilities.target_brightness and current_brightness>0.1:
        current_brightness -= 0.1
    if current_brightness>1:
        current_brightness=1
    if current_brightness<0:
        current_brightness=0

        
    #rgb_update(brightness=current_brightness, color=current_color)
    main_update(brightness=current_brightness, color=current_color)

def manual_brightness():
    global current_brightness, current_color, sensor
    if current_brightness<1:
        current_brightness+=0.1
    elif current_brightness==1:
        current_brightness=0
        
    if current_brightness>1:
        current_brightness=1
    if current_brightness<0:
        current_brightness=0

    #rgb_update(brightness=current_brightness, color=current_color)
    main_update(brightness=current_brightness, color=current_color)

def manual_color():
    global current_brightness, current_color, sensor
    if current_color==utilities.colors_table["neutral"]:
        current_color=utilities.colors_table["warm"]
    elif current_color==utilities.colors_table["warm"]:
        current_color=utilities.colors_table["cool"]
    else:
        current_color=utilities.colors_table["neutral"]
    #rgb_update(brightness=current_brightness, color=current_color)
    main_update(brightness=current_brightness, color=current_color)