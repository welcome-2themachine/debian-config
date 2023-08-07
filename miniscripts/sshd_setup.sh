#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

sudo apt install openssh-server
sudo mv ../resources/sshd.config /etc/ssh/sshd_config
sudo systemctl enable sshd --now