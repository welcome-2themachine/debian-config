#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3
sudo apt install wget
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
rm discord.deb