# OCR TEST
import pytesseract
from io import BytesIO
from skimage import io
import crop_morphology
from matplotlib import pyplot as plt

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

#p1 = load_image("photos with raspberry pi cam/test1.jpg")
p1 = load_image("photos with raspberry pi cam/img2_stand.jpg")

in_path = 'photos with raspberry pi cam/test1.jpg'
out_path = 'images_crop/1.jpg'
output = crop_morphology.process_image(path=in_path, out_path=out_path)

print(ocr(output))
