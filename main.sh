#! /bin/bash

#add more things before this

chmod +x miniscripts/*
#update /apt/sources.list
./miniscripts/sources.sh
sudo apt update && sudo apt upgrade

#./miniscripts/app_install.sh
#./miniscripts/card_reader_setup.sh
#./miniscripts/cloudflared.sh
#./miniscripts/nvidia.sh
#./miniscripts/plymouth.sh
#./miniscripts/fingerprint.sh
#./miniscripts/install_nordvpn.sh
#./miniscripts/sshd_setup.sh
#./miniscripts/ufw_setup.sh
#./miniscripts/vscode.sh
#./miniscripts/xbox_controller_setup.sh