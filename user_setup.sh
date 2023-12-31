#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

#this script is meant to move all the .confs around and make stuff look pretty

neofetch
mkdir -p ~/.local/share/fonts ~/.ssh ~/.config/{tmux,poshthemes,htop,OpenRGB} ~/Downloads

mv resources/neofetch_config.conf ~/.config/neofetch/config.conf
mv resources/htoprc ~/.config/htop/
mv resources/fonts/*.ttf ~/.local/share/fonts/
mv resources/.bashrc ~/.bashrc
mv resources/poshthemes/* ~/.config/poshthemes/
mv resources/getip /usr/bin/
mv resoureces/OpenRGB/* ~/.config/OpenRGB/
sudo chmod +x /usr/bin/getip
sudo chown root:root /usr/bin/getip
mv resources/ssh.config ~/.ssh/config
mv resources/tmux.conf ~/.config/tmux/tmux.conf
#these need to be added to firefox by the user
mv resources/unclass-certificates_pkcs7_v5-6_dod.zip ~/Downloads/dod-certificates.zip

neofetch
#this is basically a print statement
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/bin/oh-my-posh
sudo chmod +x /usr/bin/oh-my-posh

#set the desktop background
sudo mv resources/backgrounds/* /usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/future_city.jpg
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# settings
dconf load /org/gnome/terminal/legacy/profiles:/ < resources/profile.dconf
# dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf are there more dconf pieces I want



