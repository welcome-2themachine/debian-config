#! /bin/bash

sudo apt install openssh-server
sudo mv /resources/sshd.config /etc/ssh/sshd_config
sudo systemctl enable sshd --now