#! /bin/bash

#sudo apt install wget
#wget -O https://openrgb.org/releases/release_0.9/openrgb_0.9_amd64_bookworm_b5f46e3.deb openrgb.deb
#sudo dpkg -i openrgb.deb
#rm openrgb.deb

#sudo apt install git build-essential qtcreator qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libusb-1.0-0-dev libhidapi-dev pkgconf libmbedtls-dev debhelper

#git clone https://gitlab.com/CalcProgrammer1/OpenRGB
#cd OpenRgb

#qmake OpenRGB.pro
##qmak -qt5 OpenRGB.pro
#make -j$(nproc)
#sudo make install

sudo dpkg -i resources/openrgb_0.9_amd64_bookworm_b5f46e3.deb
sudo mv resoureces/i2c-dev.conf /etc/modeprobe.d/

#There's some room to trim down to only the items needed