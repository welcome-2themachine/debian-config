#! /bin/bash

sudo apt install ufw
#firewall fixes
sudo ufw enable
sudo ufw allow ssh
sudo systemctl enable ufw