#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

#install plymouth
sudo apt install \
plymouth \
plymouth-themes

#configure plymouth
plymouth-set-default-theme bgrt
plymouth-set-default-theme -R bgrt