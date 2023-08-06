#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

sudo apt install ufw
#firewall fixes
sudo ufw enable
sudo ufw allow ssh
sudo systemctl enable ufw