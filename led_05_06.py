# SPDX-FileCopyrightText: 2021 ladyada for Adafruit Industries
# SPDX-License-Identifier: MIT

# Simple demo of the TSL2591 sensor.  Will print the detected light value
# every second.
import time
import board
import adafruit_tsl2591
import neopixel
from datetime import datetime
import RPi.GPIO as GPIO
from gpiozero import Button


GPIO.setmode(GPIO.BCM)
GPIO.setup(5, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(17, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(27, GPIO.IN, pull_up_down=GPIO.PUD_UP)
btnBrightnessup=Button(17)
btnColorchanged=Button(27)


warm = [200,250, 50] 
cool = [200, 255, 255] 
green = [0,255, 40]

middle=[(x+y)/2 for (x,y) in zip(warm,cool)]
colorseq=[cool,middle,warm]

target_lux=70


currenttime=datetime.now().strftime("%H:%M:%S")
if "06:00:00" < currenttime < "17:00:00":
    basecolor=cool
    colorindex=0
else:
    basecolor=warm
    colorindex=2
    
IsManual=False
brightness=0.2



# Choose an open pin connected to the Data In of the NeoPixel strip, i.e. board.D18
# NeoPixels must be connected to D10, D12, D18 or D21 to work.
pixel_pin = board.D10

# The number of NeoPixels
num_pixels = 60

# The order of the pixel colors - RGB or GRB. Some NeoPixels have red and green reversed!
# For RGBW NeoPixels, simply change the ORDER to RGBW or GRBW.
ORDER = neopixel.GRB

pixels = neopixel.NeoPixel(
    pixel_pin, num_pixels, brightness=1, auto_write=False, pixel_order=ORDER
)


# Create sensor object, communicating over the board's default I2C bus
i2c = board.I2C()  # uses board.SCL and board.SDA

# Initialize the sensor.
sensor = adafruit_tsl2591.TSL2591(i2c)

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



def set_color(brightness):
    color=tuple([x*brightness for x in basecolor])
    pixels.fill(color)
    pixels.show()

 
def read_button(btn_pin):
    pass

# Read the total lux, IR, and visible light levels and print it every second.
i=0
out=[]
while True:
    # Read and calculate the light level in lux.
    IsManual = GPIO.input(5)
    #print(f"kux={sensor.lux}")
    
    
    #print(lux,brightness)
    
    # print(brithnessup)
    # if brightnessup:

    if IsManual:
        print("manual")
        
        if btnBrightnessup.is_pressed:
            brightness+=0.2
            if brightness>1:
                brightness=0
            set_color(brightness)
            
        if btnColorchanged.is_pressed:
            colorindex+=1
            if colorindex>2:
                colorindex=0
            basecolor=colorseq[colorindex]
            set_color(brightness)
            
            
        
        #if brithgtnes
    else:
        print("auto")
        
        currenttime = datetime.now().strftime("%H:%M:%S")
        if "06:00:00" < currenttime < "17:00:00":
            if colorindex!=0:
                basecolor=cool
                colorindex=0
                set_color(brightness)
            
        else:
            if colorindex!=2:
                basecolor=warm
                colorindex=2
                set_color(brightness)

    
        lux = sensor.lux
        print(f"lux={lux},   brightness={brightness}")
        error=target_lux-lux
        if error!=0:
            brightness=brightness+0.01*error
            if brightness>1: brightness=1
            if brightness<0: brightness=0
            set_color(brightness)
        
        """
        if brightness==0.2:
            if lux<100:
                brightness=1
                set_color(brightness)
        else:
            if lux>300:
                brightness=0.2
                set_color(brightness)
        """
            
    
    time.sleep(0.2)
 
    
    """
    print(lux)
    #time.sleep(5.0)
    if input_state == False:
        if "06:00:00" < time <= "17:00:00": #day
            if lux<110:
                morning_bright()
            else:
                morning_dim()
        else:
            if lux<110:
                night_bright()
            else:
                night_dim()
    else:
        print('Mauel')        
        """
                
        
