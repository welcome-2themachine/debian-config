#! /bin/bash

#install plymouth
apt install \
plymouth \
plymouth-themes

#configure plymouth
plymouth-set-default-theme bgrt
plymouth-set-default-theme -R bgrt