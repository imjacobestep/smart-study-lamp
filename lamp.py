## INFO
# pytesseract exe: https://tesseract-ocr.github.io/tessdoc/Home.html

## IMPORTS
#import deskew
from PyDictionary import PyDictionary
import pytesseract
from gtts import gTTS
from pydub import AudioSegment
from pydub.playback import play
from io import BytesIO
import numpy as np
from matplotlib import pyplot as plt
from skimage import io
from skimage.color import rgb2gray
from skimage.transform import rotate
from deskew import determine_skew

## GLOBAL VARIABLES
dictionary = PyDictionary
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

## FUNCTIONS
def correct_skew(image):
  grayscale = rgb2gray(image)
  angle = determine_skew(grayscale)
  rotated = rotate(image, angle)
  return rotated

def show_image(image):
  plt.imshow(image)
  plt.show()

def load_image(filepath):
    img = io.imread(filepath)
    return img

def save_image(image, name):
  io.save(name, image.astype(np.uint8))

def ocr(image):
  return pytesseract.image_to_string(image)

def define(word):
  return dictionary.meaning(word)

def translate(word, language):
  return dictionary.translate(self=dictionary, term=word, language=language)

## CODE
p1 = load_image("skew_test_images/p1.jpg")
print(ocr(correct_skew(p1)))
