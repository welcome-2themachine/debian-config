#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo apt install discord.deb
rm discord.deb