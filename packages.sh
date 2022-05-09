#! usr/bin/bash
sudo pip3 install --upgrade setuptools
echo "$(tput setaf 1) $(tput setab 2)--------SPEECH/WORD PACKAGES--------"
sudo pip3 install PyDictionary
sudo pip3 install pyttsx3
echo "$(tput setaf 1) $(tput setab 3)--------UTILITY PACKAGES--------"
sudo pip3 install sympy
sudo pip3 install thread6
sudo pip3 install datetime
sudo pip3 install matplotlib
echo "$(tput setaf 1) $(tput setab 4)--------HARDWARE PACKAGES--------"
sudo pip3 install gpiozero
sudo pip install RPi.GPIO
echo "$(tput setaf 1) $(tput setab 5)--------IMAGE PACKAGES--------"
sudo pip3 install pytesseract
sudo pip3 install scikit-image
sudo apt install ffmpeg python-opencv
sudo apt install libxcb-shm0 libcdio-paranoia-dev libsdl2-2.0-0 libxv1  libtheora0 libva-drm2 libva-x11-2 libvdpau1 libharfbuzz0b libbluray2 libatlas-base-dev libhdf5-103 libgtk-3-0 libdc1394-22 libopenexr23
sudo pip3 install mediapipe-rpi4
sudo pip3 install opencv-python
echo "$(tput setaf 1) $(tput setab 6)--------LED PACKAGES--------"
sudo pip3 install --upgrade adafruit-python-shell
sudo pip3 install adafruit-blinka
sudo pip3 install adafruit-circuitpython-neopixel
sudo pip3 install adafruit-circuitpython-tsl2591