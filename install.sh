#! /bin/bash

# This is the base install script for a minimal debian install
# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

chmod +x miniscripts/*
chmod +x user_setup.sh
echo "Configure install.sh by uncommenting the miniscripts you need for your device"

##### Update First #####
#miniscripts/soureces.sh
#sudo apt update && sudo apt upgrade

##### AMD CPU #####
#miniscripts/amd_cpu.sh
##### INTEL CPU #####
#miniscripts/intel_cpu.sh

##### AMD GPU #####
#miniscripts/amd_gpu.sh
##### NVIDIA GPU #####
#miniscripts/nvidia.sh

##### LAPTOP POWER #####
#miniscripts/laptop_power.sh

##### General Apps #####
#miniscripts/app_install.sh
#miniscripts/card_reader_setup.sh
#miniscripts/cloudflared.sh
#miniscripts/discord.sh
#miniscripts/fingerprint.sh
#miniscripts/nordvpn.sh
#miniscripts/obsidian.sh
#miniscripts/openrgb.sh
#miniscripts/parsecd.sh
#miniscripts/plymouth.sh
#miniscripts/signal-desktop.sh
#miniscripts/snapd.sh
#miniscripts/sources.sh
#miniscripts/sshd_setup.sh
#miniscripts/steam.sh
#miniscripts/ufw_setup.sh
#miniscripts/vscode.sh
#miniscripts/xbox_controller_setup.sh

##### Set Up User #####
#user_setup.sh

##### DM Install #####
#miniscripts/gnome.sh
#miniscripts/gnome-extensions.sh