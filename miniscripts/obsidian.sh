#! /bin/bash

wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.7/obsidian_1.3.7_amd64.deb -O obidian.deb
sudo apt install obsidian.deb
rm obsidian.deb
