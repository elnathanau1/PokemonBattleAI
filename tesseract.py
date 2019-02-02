import cv2
import numpy as np
import pytesseract
from PIL import Image
from pytesseract import image_to_string

im = Image.open("img-2.png")

print(image_to_string(im))
