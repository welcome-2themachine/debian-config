#! /bin/bash
# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

# this is the entire reason for this project

sudo apt install wget
wget https://builds.parsec.app/package/parsec-linux.deb -O parsec.deb
sudo dpkg -i ./parsec.deb
sudo apt install -f
sudo dpkg -i parsec.deb
sudo dpkg -i resoureces/multiarch-support_2.28-10_amd64.deb
sudo dpkg -i resoureces/liblibjpeg8_8d1-2_amd64.deb
rm parsec.deb