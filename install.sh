#!/bin/bash

#Update
sudo apt-get update
sudo apt-get full-upgrade
sudo apt-get clean

sudo apt-get install python3
sudo apt-get install python3-pip
sudo apt-get install python3-pil
sudo apt-get install python3-numpy
sudo apt-get install ttf-dejavu

pip3 install --upgrade setuptools
sudo pip3 install adafruit-python-shell

#Adafruit requiremnts
mkdir Downloads
cd Downloads
wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py
sudo python3 raspi-blinka.py

pip3 install adafruit-circuitpython-rgb-display
pip3 install --upgrade --force-reinstall spidev
pip3 install RPi.GPIO

#Pi-hole
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
cd "Pi-hole/automated install/"
sudo bash basic-install.sh
cd
