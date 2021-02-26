<p align="center">
  <img width="460" height="300" src="https://cdn-learn.adafruit.com/guides/cropped_images/000/002/774/medium640/4393_top_lit_ORIG_2019_10.jpg?1571856589">
</p>  

# PiHole Raspeberry Pi Zero W

## Parts
[Raspeberry pi Zero W](https://learn.adafruit.com/adafruit-mini-pitft-135x240-color-tft-add-on-for-raspberry-pi/kernel-module-install)  
[Adafruit Screen](https://learn.adafruit.com/adafruit-mini-pitft-135x240-color-tft-add-on-for-raspberry-pi/kernel-module-install)     
[MicroSd card class 10 16GB minumum](https://en.wikipedia.org/wiki/SD_card)  
[Power Adapter  2.5A power Supply](https://www.amazon.com/Supply-Adapter-Charger-Raspberry-Compatible/dp/B08516RZX3/ref=sr_1_1_sspa?dchild=1&keywords=raspberry+pi+zero+w+charger&qid=1614375434&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTE5OR1g3MDlZWDhWJmVuY3J5cHRlZElkPUEwNTc0MDcxMVFBSzhNWFVKWTFEMCZlbmNyeXB0ZWRBZElkPUEwNDY1NjE3MkxMT0xJMjFaNFQ2NiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=)

Optional:  
[3d printed Case](https://www.thingiverse.com/thing:4708460/files)

## Os  
[Raspberry Pi OS Lite](https://www.raspberrypi.org/software/operating-systems/#raspberry-pi-os-32-bit)  

[PiHole](https://github.com/pi-hole/pi-hole/#one-step-automated-install)  

## Instructions
- Install raspberry pi os into your sd card.
- Login via ssh pi@your_ip_here, the default password is raspberry.
- Change the default password:
``
passwd
`` 

- Clone this repo in to the raspberry.

```
git clone https://github.com/alefuedev/Pihole
```  
*For the configuration of the pihole theres tons of videos on youtube.*
- Update raspberry os, install pihole, and packages needed.


```
cd Pihole
./install
```
- Move the screen folder inside of the pihole repo into your Downloads folder if you don't have one create one.
```
cd
mkdir Downloads
```

### Crontab

Add file to crontab.
```
crontab -e  
@reboot sleep 80 && python3 /home/pi/Downloads/screen/pihole.py
```
The pihole script will make the screen turn off unless one of the buttons is press.
