#! /bin/bash

#add more things before this

chmod +x miniscripts/*
#update /apt/sources.list
./miniscripts/sources.sh
sudo apt update && sudo apt upgrade

# General List
#./miniscripts/sshd_setup.sh
#./miniscripts/ufw_setup.sh
#./miniscripts/app_install.sh
#./miniscripts/plymouth.sh
#./miniscripts/cloudflared.sh
#./miniscripts/vscode.sh
#./miniscripts/install_nordvpn.sh
#./miniscripts/card_reader_setup.sh
#./miniscripts/xbox_controller_setup.sh

# Desktop List

# XPS 15 9520 List
#./miniscripts/fingerprint.sh
#./miniscripts/nvidia.sh