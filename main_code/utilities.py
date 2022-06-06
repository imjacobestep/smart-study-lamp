## IMPORTS ##
from io import BytesIO
from skimage import io
from matplotlib import pyplot as plt
import time
import pyttsx3
import random
from PyDictionary import PyDictionary as dictionary
import requests
from bs4 import BeautifulSoup

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

target_brightness = 7
movement_margin = 10
finger_margin = 35
engine = pyttsx3.init()
engine.setProperty('rate', 105)


## CLOUD FIRESTORE SETUP ##
cred = credentials.Certificate("../smart-study-lamp-firebase-adminsdk-pgq1y-eeb5253a08.json")
firebase_admin.initialize_app(cred)
db = firestore.client()

import environment_service

## FUNCTIONS ##
def _get_soup_object(url, parser="html.parser"):
    return BeautifulSoup(requests.get(url).text, parser)

def load_image(filepath):
    img = io.imread(filepath)
    return img

def show_image(image):
    plt.imshow(image)
    plt.show()

def speak(text):
    #pyttsx3.speak(text)
    engine.say(text)
    engine.runAndWait()

def get_definition(word):
    definition = ""
    #definition = dictionary.meaning(word)["Noun"][0]
    print("word detected: " + word)
    output_text = ("This word is pronounced: " + str(word) + ". Here is its definition: " + str(definition))
    return output_text

def wait(seconds):
    start = time.time()
    while time.time()-start < seconds:
        pass

def usage(term, min_length= 5, disable_errors=False):
        """
        :param term: The word we are looking for meanings and usages
        :param min_length: minimum length of the sentence to filter on
        :param disable_errors: if False, print errors if there is some error
        :return: returns a dictionary with keys begin (noun, verb). One with meanings and other with usages
        """
        if len(term.split()) > 1:
            print("Error: A Term must be only a single word")
        else:
            try:
                html = _get_soup_object("http://wordnetweb.princeton.edu/perl/webwn?s={0}".format(term))
                types = html.findAll("h3")
                length = len(types)
                lists = html.findAll("ul")
                usage_out = []
                for a in types:
                    reg = str(lists[types.index(a)])
                    for x in reg.findall(r"<i>\"(.*?)\"", reg):
                        if 'often followed by' in x:
                            pass
                        elif len(x) >= min_length and term in str(x):
                            usage_out.append(x)
                return usage_out
            except Exception as e:
                if disable_errors == False:
                    print("Error: The Following Error occured: %s" % e)

def send_word(word):
    #wordID = random.randint(1,200000)
    wordID = time.time()
    print("uploading word...")
    #definition = dictionary.meaning(word)["Noun"][0]
    #use = usage(word)
    word_doc = db.collection('words').document(str(wordID))
    word_doc.set({
        'word': word,
        'learned': False,
        'definition': "This is the definition of the word",
        'use': "This is the word used in a sentence"
    })
    print("finished")

def send_lux():
    readingID = time.time()
    lux = environment_service.get_lux()
    #if abs(lux - target_brightness) < 2:
    if lux >= target_brightness:
        at_target = 1
    else:
        at_target = 0
    #print("uploading lux...")
    lux_doc = db.collection('environment').document(str(readingID))
    lux_doc.set({
        'reading': lux,
        'meets_target': at_target
    })
    #print("finished")

