# OCR TEST
import pytesseract
from io import BytesIO
from skimage import io
import crop_morphology
from matplotlib import pyplot as plt
import cv2
import numpy as np
from PIL import Image

#pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

def ocr(image):
  return pytesseract.image_to_string(image)

def  draw_rectangle(x, y, image):
    imgName = "photo_x" + str(x) + "_y" + str(y) + ".jpg"
    cv2.imwrite(filename=imgName,img = image)
    x = int(x)
    y = int(y)
    x1 = x-150
    x2 = x+150
    y1 = y-150
    y2 = y
    triangle = [(x-10,y-30), (x, y-20), (x+10,y-30)]
    rect_image = cv2.rectangle(img= image, pt1=(x1, y1), pt2=(x2, y2), color=(255, 255, 255), thickness=10)
    poly_image = cv2.polylines(img=rect_image, pts=np.array([triangle]), color=(255, 255, 255), isClosed=True)
    return poly_image

def load_image(filepath):
    img = io.imread(filepath)
    return img

def show_image(image):
  plt.imshow(image)
  plt.show()

def getBox(image):
  return pytesseract.image_to_boxes(image)

def get_word(details):
  fx = 150
  fy = 115 - 20
  for i in range(len(details['text'])):
    xTest = (fx > details['left'][i]) and ((fx-details['left'][i]) < details['width'][i])
    yTest = (fy > details['top'][i]) and ((fy-details['top'][i]) < details['height'][i])
    if(xTest and yTest and float(details["conf"][i]) > 0):
      data = [i, details['text'][i], details['left'][i], details['top'][i], details['width'][i], details['height'][i]]
      return(data)
  return '----fail----'

def process_image(image, x, y):
  left = x - 150
  top = y - 115
  right = x + 150
  bottom = y
  imdata = Image.fromarray(image)
  cropped = imdata.crop((left, top, right, bottom))
  return cropped

def getWord1(finger_x, finger_y):
  ret = '----fail----'
  margin = 25
  #print(details['text'])
  for sequence_number in range(total_boxes):
    if float(details['conf'][sequence_number]) >30:
      (x, y, w, h) = (details['left'][sequence_number], details['top'][sequence_number], details['width'][sequence_number],  details['height'][sequence_number])
      x2, y2 = x+w, y+h
      if( (x < finger_x < x2) and ((y-margin) < finger_y < y2) ):
        ret = details['text'][sequence_number]
  return ret

def getWord2(fx, fy):
  buffer=20
  for i in range(len(details['text'])):
    x1=details['left'][i]
    x2=x1+details['width'][i]
    y1=details['top'][i]
    y2=y1+details['left'][i]
    xTest = x1<fx<x2
    yTest = y1<(fy-buffer)<y2
    if(xTest and yTest):
      #print(details['width'][i])
      data = [i, details['text'][i], details['left'][i], details['top'][i], details['width'][i], details['height'][i]]
      #return details['text'][i]
      return(data)
  return '----fail----'

in_path = 'test_code/past_camera_test/photos/photos with raspberry pi cam/test1.jpg'
out_path = 'test_code/past_camera_test/photos/images_crop/test1.jpg'
original_image = plt.imread(fname=in_path)

greyscale_image = cv2.cvtColor(original_image, cv2.COLOR_BGR2GRAY)
threshold_image = cv2.threshold(greyscale_image, 0, 255, cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]
cropped_image = process_image(image=threshold_image, x=2101, y=831)
details = pytesseract.image_to_data(cropped_image, output_type=pytesseract.Output.DICT)

for i in range(len(details['text'])):
  (x, y, w, h) = (details['left'][i], details['top'][i], details['width'][i],  details['height'][i])
  #print(details['text'][i] + " occurs at: " + str(x) + "," + str(y), " to " + str(x+w) + "," + str(y+h))
  #print(details['text'][i] + " occurs at: " + str(x) + "," + str(y), " with " + str(w) + "," + str(h) + "; conf: " + details['conf'][i])
  #print(details['text'][i] + " when between " + str(x) + " and " + str(x+w) + ", and y between " + str(y) + " and " + str(y+h))
  threshold_img = cv2.rectangle(np.array(cropped_image), (x, y), (x + w, y + h), (255, 255, 255), 2)

#cv2.imshow('captured text', threshold_img)
#output4 = Image.fromarray(threshold_img)
#output4.save(out_path)
#img = draw_rectangle(image=threshold_img, x=2101, y=831)
#data = getWord2(2101, 831)
data = get_word(details=details)
print(data)
#cv2.imshow('captured dext', cv2.resize(src=rect_image, dsize=(1280,720)))
cv2.imshow('captured dext', np.array(cropped_image))

cv2.waitKey(0)