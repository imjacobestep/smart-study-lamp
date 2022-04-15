# OCR TEST
import pytesseract
from io import BytesIO
from skimage import io

pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

def ocr(image):
  return pytesseract.image_to_string(image)

def load_image(filepath):
    img = io.imread(filepath)
    return img

p1 = load_image("photos with raspberry pi cam/test1.jpg")
print(ocr(p1))