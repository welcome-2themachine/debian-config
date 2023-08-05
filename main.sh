#! /bin/bash

#add more things before this

chmod +x miniscripts/*
#update /apt/sources.list
./miniscripts/sources.sh
sudo apt update && sudo apt upgrade

