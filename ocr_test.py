# OCR TEST
import pytesseract
from io import BytesIO

def ocr(image):
  return pytesseract.image_to_string(image)

def load_image(filepath):
    img = io.imread(filepath)
    return img

p1 = load_image("skew_test_images/p1.jpg")
print(ocr(p1))