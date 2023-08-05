#! /bin/bash

sudo apt install \
firmware-amd-graphics \
libgl1-mesa-dri \
libglx-mesa0 \
mesa-vulkan-drivers \
xserver-xorg-video-all \
radeontop

sudo mv resources/amd_xorg.conf /etc/X11/xorg.conf.d/20-amdgpu.conf