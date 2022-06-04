## IMPORTS ##
from io import BytesIO
from skimage import io
from matplotlib import pyplot as plt
import time
import pyttsx3
import random

import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

## VARIABLES ##
pin_table = {
  "led brightness": 27,
  "led color": 26,
  "auto switch": 5,
#   "cool led data": 18,
#   "warm led data": 19,
  "color led data": 10,
  "camera switch": 22,
}

colors_table = {
    "warm": [253, 150, 50],
    "cool": [100, 100, 255],
    "neutral": [254, 254, 254],
    "special": [0, 255, 40],
}

crop_dimensions = {
    "width": 300,
    "height": 115
}

target_brightness = 60
movement_margin = 10
finger_margin = 35

## CLOUD FIRESTORE SETUP ##
cred = credentials.Certificate("../smart-study-lamp-firebase-adminsdk-pgq1y-eeb5253a08.json")
firebase_admin.initialize_app(cred)
db = firestore.client()

import environment_service

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
    definition = dictionary.meaning(word)
    print("word detected: " + word)
    output_text = ("This word is pronounced: " + str(word) + ". Here is its definition: " + str(definition))
    return output_text

def wait(seconds):
    start = time.time()
    while time.time()-start < seconds:
        pass

def send_word(word):
    wordID = random.randint(1,200000)
    print("uploading word...")
    word_doc = db.collection('words').document(str(wordID))
    word_doc.set({
        'word':word,
        'learned': False
    })
    print("finished")

def send_lux():
    readingID = random.randint(1,200000)
    #lux = environment_service.get_lux()
    if abs(lux - target_brightness) < 2:
    if lux < target_brightness:
        at_target = 1
    else:
        at_target = 0
    print("uploading lux...")
    lux_doc = db.collection('environment').document(str(readingID))
    lux_doc.set({
        'reading': lux,
        'meets_target': at_target
    })
    print("finished")
