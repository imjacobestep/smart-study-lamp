## IMPORTS ##
from io import BytesIO
from skimage import io
from matplotlib import pyplot as plt
import time

## VARIABLES ##
pin_table = {
  "led brightness": 17,
  "led color": 27,
  "auto switch": 5,
  "led data": 10,
  "camera switch": 19,
}

## FUNCTIONS ##
def load_image(filepath):
    img = io.imread(filepath)
    return img

def show_image(image):
    plt.imshow(image)
    plt.show()

def wait(seconds):
    start = time.time()
    while time.time()-start < seconds:
        pass