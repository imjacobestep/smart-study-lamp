# OCR TEST
import pytesseract
from io import BytesIO
from skimage import io
import crop_morphology
from matplotlib import pyplot as plt
import cv2

pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

def ocr(image):
  return pytesseract.image_to_string(image)

def load_image(filepath):
    img = io.imread(filepath)
    return img

def show_image(image):
  plt.imshow(image)
  plt.show()

def getBox(image):
  return pytesseract.image_to_boxes(image)

  
def getWord(finger_x, finger_y):
  ret = ''
  margin = 5
  for sequence_number in range(total_boxes):
    if float(details['conf'][sequence_number]) >30:
      (x, y, w, h) = (details['left'][sequence_number], details['top'][sequence_number], details['width'][sequence_number],  details['height'][sequence_number])
      x2, y2 = x+w, y-h
      if( (x < finger_x < x2) and ((y-margin) < finger_y < y2) ):
        ret = details['text'][sequence_number]

#p1 = load_image("photos with raspberry pi cam/test1.jpg")
#p1 = load_image("photos with raspberry pi cam/img2_stand.jpg")

in_path = 'photos with raspberry pi cam/test1.jpg'
out_path = 'images_crop/2.jpg'
#output = crop_morphology.process_image(path=in_path, out_path=out_path)
output = cv2.imread(in_path)

output = cv2.cvtColor(output, cv2.COLOR_BGR2GRAY)
output = cv2.threshold(output, 0, 255, cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]

#output.save(out_path)
#print(ocr(output))
#print(pytesseract.image_to_string(image=output, config='--oem 1'))

details = pytesseract.image_to_data(output, output_type=pytesseract.Output.DICT)
total_boxes = len(details['text'])

for sequence_number in range(total_boxes):
  if float(details['conf'][sequence_number]) >30:
    (x, y, w, h) = (details['left'][sequence_number], details['top'][sequence_number], details['width'][sequence_number],  details['height'][sequence_number])
    threshold_img = cv2.rectangle(output, (x, y), (x + w, y + h), (0, 255, 0), 2)

cv2.imshow('captured text', threshold_img)
cv2.waitKey(0)