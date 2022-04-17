# SKEW CORRECTION TEST
from deskew import determine_skew
import numpy as np
from matplotlib import pyplot as plt
from skimage import io
from skimage.color import rgb2gray
from skimage.transform import rotate

def correct_skew(image):
  grayscale = rgb2gray(image)
  angle = determine_skew(grayscale)
  rotated = rotate(image, angle)
  return rotated

def show_image(image):
  plt.imshow(image)
  plt.show()

def save_image(image, name):
  io.save(name, image.astype(np.uint8))

p1 = io.imread('skew_test_images/p1.jpg')

#show_image(p1)
deskewed = correct_skew(p1)
show_image(deskewed)