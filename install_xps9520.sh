#! /bin/bash

chmod +x miniscripts/*
chmod +x user_setup.sh
update /apt/sources.list
./miniscripts/sources.sh
sudo apt update && sudo apt upgrade

# General List
./miniscripts/app_install.sh
./user_setup.sh
./miniscripts/parsecd.sh
./miniscripts/sshd_setup.sh
./miniscripts/ufw_setup.sh
./miniscripts/plymouth.sh
./miniscripts/cloudflared.sh
./miniscripts/vscode.sh
./miniscripts/install_nordvpn.sh
./miniscripts/discord.sh
./miniscripts/obsidian.
./miniscripts/signal-desktop.sh
./miniscripts/card_reader_setup.sh
./miniscripts/xbox_controller_setup.sh
./miniscripts/parsecd.sh

# XPS 15 9520 List
./miniscripts/fingerprint.sh
./miniscripts/nvidia.sh
./miniscripts/laptop_power.sh
./miniscripts/intel_cpu.sh