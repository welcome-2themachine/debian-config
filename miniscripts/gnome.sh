#! /bin/bash

sudo apt update

sudo apt install \
adwaita-icon-theme \
baobab \
dconf-cli \
dconf-gsettings-backend \
gdm3 \
glib-networking \
gnome-backgrounds \
gnome-bluetooth-sendto \
gnome-calculator \
gnome-control-center \
gnome-keyring \
gnome-logs \
gnome-menus \
gnome-session \
gnome-software \
gnome-sushi \
gnome-shell \
gnome-system-monitor \
gnome-text-editor \
gnome-terminal \
gnome-disk-utility \
gnome-software-plugin-flatpak \
gnome-software-plugin-snap \
gnome-browser-connector \
gnome-tweaks \
gnome-text-editor \
gnome-themes-extra \
gnome-shell-extension-manager \
gnome-shell-extionsion-autohidetopbar \
gnome-shell-extension-bluetooth-quick-connect \
gnome-shell-extension-espresso \
gvfs-backends \
gvfs-fuse \
nautilus \
pipewire-audio \
sound-theme-freedesktop \
system-config-printer-udev \
network-manager-gnome

sudo systemctl start gdm