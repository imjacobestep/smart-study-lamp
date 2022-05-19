## IMPORTS ##
from io import BytesIO
from skimage import io
from matplotlib import pyplot as plt
import time
import pyttsx3

## VARIABLES ##
pin_table = {
  "led brightness": 23,
  "led color": 24,
  "auto switch": 5,
  "cool led data": 12,
  "warm led data": 13,
  "color led data": 10,
  "camera switch": 19,
}

colors_table = {
    "warm": [253, 150, 50],
    "cool": [100, 100, 255],
    "neutral": [254, 254, 254],
    "special": [0, 255, 40],
}

crop_dimensions = {
    "width": 400,
    "height": 115
}

## FUNCTIONS ##
def load_image(filepath):
    img = io.imread(filepath)
    return img

def show_image(image):
    plt.imshow(image)
    plt.show()

def speak(text):
    pyttsx3.speak(text)

def get_definition(word):
    definition = ""
    #definition = dictionary.meaning(word)
    print("word detected: " + word)
    output_text = ("This word is pronounced: " + str(word) + ". Here is its definition: " + str(definition))
    return output_text

def wait(seconds):
    start = time.time()
    while time.time()-start < seconds:
        pass