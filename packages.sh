#! usr/bin/bash
pip3 install --upgrade setuptools
echo "$(tput setab 3)--------SPEECH/WORD PACKAGES--------"
pip3 install PyDictionary
pip3 install pyttsx3
echo "$(tput setab 3)--------UTILITY PACKAGES--------"
pip3 install sympy
pip3 install thread6
pip3 install datetime
pip3 install matplotlib
echo "$(tput setab 3)--------HARDWARE PACKAGES--------"
pip3 install gpiozero
pip install RPi.GPIO
echo "$(tput setab 3)--------IMAGE PACKAGES--------"
pip3 install pytesseract
pip3 install scikit-image
sudo apt install ffmpeg python-opencv
sudo apt install libxcb-shm0 libcdio-paranoia-dev libsdl2-2.0-0 libxv1  libtheora0 libva-drm2 libva-x11-2 libvdpau1 libharfbuzz0b libbluray2 libatlas-base-dev libhdf5-103 libgtk-3-0 libdc1394-22 libopenexr23
sudo pip3 install mediapipe-rpi4
pip3 install opencv-python
echo "$(tput setab 3)--------LED PACKAGES--------"
sudo pip3 install --upgrade adafruit-python-shell
sudo pip3 install adafruit-blinka
sudo pip3 install adafruit-circuitpython-neopixel
sudo pip3 install adafruit-circuitpython-tsl2591