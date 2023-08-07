#! /bin/bash
# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

# this is the entire reason for this project

sudo apt install wget
wget https://builds.parsec.app/package/parsec-linux.deb -O parsec.deb
sudo apt install ./parsec.deb
rm parsec.deb