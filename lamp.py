## INFO
# pytesseract exe: https://tesseract-ocr.github.io/tessdoc/Home.html

## IMPORTS
import ocr_test
import camera_button
import definition_test
import translation_test
import tts_test
import camera_button
import crop_morphology
from gpiozero import Button

## GLOBAL VARIABLES


## FUNCTIONS
def run_test():
  image = camera_button.take_photo()
  print(ocr_test.ocr(crop_morphology.process_image(image)))

## CODE
#p1 = load_image("photos with raspberry pi cam/test1.jpg")
#print(ocr(correct_skew(p1)))

button.when_pressed = run_test()