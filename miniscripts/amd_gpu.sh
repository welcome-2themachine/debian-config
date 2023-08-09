#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

sudo apt install \
firmware-amd-graphics \
libgl1-mesa-dri \
libglx-mesa0 \
mesa-vulkan-drivers \
xserver-xorg-video-all \
radeontop

sudo mv resources/amd_xorg.conf /etc/X11/xorg.conf.d/20-amdgpu.conf