#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

sudo apt install wget
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.7/obsidian_1.3.7_amd64.deb -O obsidian.deb
sudo dpkg -i obsidian.deb
rm obsidian.deb
