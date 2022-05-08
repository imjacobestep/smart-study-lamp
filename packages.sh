#! usr/bin/bash
pip3 install install setuptools
pip3 install sympy
pip3 install threading
pip3 install time
pip3 install datetime
pip3 install io
pip3 install pytesseract
pip3 install skimage
pip3 install matplotlib
pip3 install PyDictionary
pip3 install pyttsx3
pip3 install cv2
pip install RPi.GPIO
pip3 install ctypes
pip3 install gpiozero
pip3 install io
echo "setting up CircuitPython"
cd ~
sudo pip3 install --upgrade adafruit-python-shell
sudo pip3 install adafruit-blinka
echo "setting up Neopixel"
sudo pip3 install adafruit-circuitpython-neopixel
echo "setting up CircuitPython driver"
sudo pip3 install adafruit-circuitpython-tsl2591
echo "setting up MediaPipe"
sudo apt install ffmpeg python-opencv
sudo apt install libxcb-shm0 libcdio-paranoia-dev libsdl2-2.0-0 libxv1  libtheora0 libva-drm2 libva-x11-2 libvdpau1 libharfbuzz0b libbluray2 libatlas-base-dev libhdf5-103 libgtk-3-0 libdc1394-22 libopenexr23
sudo pip3 install mediapipe-rpi4
