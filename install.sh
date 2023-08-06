#! /bin/bash

# This is the base install script for a minimal debian install
# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

#add more things before this

#chmod +x miniscripts/*
#update /apt/sources.list
#./miniscripts/sources.sh
#sudo apt update && sudo apt upgrade

# General List
#./user_setup.sh
#./miniscripts/amd_cpu.sh
#./miniscripts/intel_cpu.sh
#./miniscripts/sshd_setup.sh
#./miniscripts/ufw_setup.sh
#./miniscripts/app_install.sh
#./miniscripts/plymouth.sh
#./miniscripts/cloudflared.sh
#./miniscripts/vscode.sh
#./miniscripts/install_nordvpn.sh
#./miniscripts/discord.sh
#./miniscripts/obsidian.sh
#./miniscripts/card_reader_setup.sh
#./miniscripts/xbox_controller_setup.sh

# Desktop List
#./miniscripts/amd.sh

# XPS 15 9520 List
#./miniscripts/fingerprint.sh
#./miniscripts/nvidia.sh

SHORTOPTS="anxdhv"
LONGOPS="amd,nvidia,xps,desktop,help,version"

if $(getopt -T > /dev/null 2>&1) ; [ $? = 4 ] ; then # New longopts getopt.
    OPTS=$(getopt -o $SHORTOPTS --long $LONGOPTS -n "$progname" -- "$@")
else # Old classic getopt.
    # Special handling for --help and --version on old getopt.
    case $1 in --help) echo "help me" ; exit 0 ;; esac
    case $1 in --version) "print me" ; exit 0 '' esac
    OPTS=(getopt $SHORTOPTS "$@")
fi

if [ $? -ne 0 ]; then
    echo "'$progname --help' for more information" 1>&2
    exit 1
fi

eval set -- "$OPTS"
# I don't entirely understand all of this ^ https://lists.gnu.org/archive/html/help-gnu-utils/2008-11/msg00002.html

# more to do down below

while getopts "anxdh" option; do
    case $option in
        a)
            #amd studd
            echo "Installing amd drivers"
        ;;
        n)
            echo "Installing nvidia drivers"
        ;;
        x)
            #flag1 code
            echo "Now running scripts for XPS 15 9520"
        ;;
        d)
            #flag2 code
            echo "Now running scripts for your custom desktop"
        ;;
        h)
            #none code
            echo "Options:"
            echo " -x: for XPS 15 9520"
            echo " -d: for my am4/radeon based desktop"
            echo " -n: to install nvidia gpu drivers"
            echo " -a: to install amd gpu drivers"
            echo " -h: to show this menu"
        ;;
        \?)
            #flag3 code
            echo "some error"
        ;;
    esac
done