## IMPORTS ##
import time
import board
import adafruit_tsl2591
import neopixel
from datetime import datetime
import utilities

## VARIABLES ##
warm = [250, 238, 50] #warm color values
cool = [255, 255, 255] #cool color values
middle=[(x+y)/2 for (x,y) in zip(warm,cool)]
colorseq=[cool,middle,warm]
current_color = 1

optimal_brightness = 110

pixel_pin = board.D18 #pin connected to data input on strip, must be D10, D12, D18, or D21
num_pixels = 20 #number of neopixels
ORDER = neopixel.GRB #order of pixel colors
pixels = neopixel.NeoPixel(
    pixel_pin, num_pixels, brightness=1, auto_write=False, pixel_order=ORDER
)
i2c = board.I2C() #sensor object, uses board's I2C bus, uses board.SCL and board.SDA
sensor = adafruit_tsl2591.TSL2591(i2c) #initialize sensor
looping = True
brightness=1
isMorning = True

## FUNCTIONS ##

def cycle_colors():
    if current_color <= 1:
        current_color += 1
    else:
        current_color = 0
    set_color(colorseq[current_color])

def cycle_brightness():
    if brightness < 1:
        brighter()
    else:
        brightness = 0
        set_color(current_color)

def play_sound(sound):
    if sound == 0:
        print("play entrance sound")
    else:
        print("play exit sound")

def set_color(color):
    value = tuple([x*brightness for x in color])
    pixels.fill(color)
    pixels.show()

def night_dim():
    isMorning = False
    brightness=0.2
    set_color(warm)

def night_bright():
    isMorning = False
    brightness=1
    set_color(warm)
        
def morning_dim():
    isMorning = True
    brightness=0.2
    set_color(cool)
    
def morning_bright():
    isMorning = True
    brightness=1
    set_color(cool)

def brighter():
    if brightness < 1.0:
        brightness += 0.1
        if isMorning:
            color=tuple([x*brightness for x in cool])
        else:
            color=tuple([x*brightness for x in warm])
    pixels.fill(color)
    pixels.show()

def dimmer():
    if brightness > 0.0:
        brightness -= 0.1
        if isMorning:
            color=tuple([x*brightness for x in cool])
        else:
            color=tuple([x*brightness for x in warm])
    pixels.fill(color)
    pixels.show()

def start_light():
    looping = True

def stop_light():
    looping = False

def light_process():
    while looping:
        time = datetime.now().strftime("%H:%M:%S")
        lux = sensor.lux
        print(lux)
        if "06:00:00" < time <= "17:00:00": #day
            if lux<optimal_brightness:
                morning_bright()
            else:
                morning_dim()
        else:
            if lux<optimal_brightness:
                night_bright()
            else:
                night_dim()