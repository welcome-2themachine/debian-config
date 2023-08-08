#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

sudo apt install wget
#nordvpn
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

sudo usermod -aG nordvpn mechanicus