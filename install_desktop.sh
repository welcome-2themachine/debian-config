#! /bin/bash

chmod +x miniscripts/*
update /apt/sources.list
./miniscripts/sources.sh
sudo apt update && sudo apt upgrade

# General List
./user_setup.sh
./miniscripts/parsecd.sh
./miniscripts/sshd_setup.sh
./miniscripts/ufw_setup.sh
./miniscripts/app_install.sh
./miniscripts/plymouth.sh
./miniscripts/cloudflared.sh
./miniscripts/vscode.sh
./miniscripts/install_nordvpn.sh
./miniscripts/discord.sh
./miniscripts/obsidian.sh
./miniscripts/card_reader_setup.sh
./miniscripts/xbox_controller_setup.sh
./miniscripts/parsecd.sh

# Desktop
./miniscripts/amd_cpu.sh
./miniscripts/amd.sh