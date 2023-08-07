#! /bin/bash

# This is the base install script for a minimal debian install
# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

#add more things before this

#chmod +x miniscripts/*
#chmod +x user_setup.sh

#update /apt/sources.list
#./miniscripts/sources.sh
#sudo apt update && sudo apt upgrade

# General List
#./miniscripts/app_install.sh
#./user_setup.sh
#./miniscripts/amd_cpu.sh
#./miniscripts/parsecd.sh
#./miniscripts/intel_cpu.sh
#./miniscripts/sshd_setup.sh
#./miniscripts/ufw_setup.sh
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
print_help()
{
    echo "Options:"
    echo " -a|--amdgpu: installs amd gpu drivers"
    echo " -n|--nvidia: install nvidia gpu drivers"
    echo " -i|--intelcpu: installs intel cpu microcode"
    echo " -c|--amdcpu: installs amd cpu microcode"
    echo " -x|--xps: install script for my XPS 15 9520"
    echo " -d|--desktop: for my am4/radeon based desktop"
    echo "      https://pcpartpicker.com/list/2v7nzf"
    echo " -h|--help: to show this menu"
}

#***********************************************************************
# REMOVE IF YOU GET IT WORKING
echo "this scrips is unfinished"
exit 0
#***********************************************************************

SHORTOPTS="anicxdh"
LONGOPS="amdgpu,nvidia,intelcpu,amdcpu,xps,desktop,help"

if $(getopt -T >/dev/null 2>&1) ; [ $? = 4 ] ; then # New longopts getopt.
    OPTS=$(getopt -o $SHORTOPTS --long $LONGOPTS -n "$progname" -- "$@")
else # Old classic getopt.
    # Special handling for --help and --version on old getopt.
    case $1 in --help) print_help ; exit 0 ;; esac
    OPTS=$(getopt $SHORTOPTS "$@")
fi

if [ $? -ne 0 ]; then
    echo "'$progname --help' for more information" 1>&2
    exit 1
fi

eval set -- "$OPTS"
# I don't entirely understand all of this ^ https://lists.gnu.org/archive/html/help-gnu-utils/2008-11/msg00002.html

nvidia_gpu=false
amd_gpu=false
amd_cpu=false
intel_cpu=false
fingerprint=false
i=1

while [ $# -gt 0 ]; do
    echo "run: $i"
    : debug: $1
    case $1 in
        -a|--amdgpu)
        #amd gpu
            echo "Installing amd drivers"
            amd_gpu=true
            shift
            ;;
        -n|--nvidia)
        # nvidia gpu
            echo "Installing nvidia drivers"
            nvidia_gpu=true
            shift
            ;;
        -i|--intelcpu)
        # intel cpu
            echo "installing intel microcode"
            intel_cpu=true
            shift
            ;;
        -c|--amdcpu)
        # amd cpu
            echo "installing amd microcode"
            amd_cpu=true
            shift
            ;;
        -x|--xps)
        # script for my xps 9520
            echo "Now running scripts for XPS 15 9520"
            intel_cpu=true
            nvidia_gpu=true
            fingerprint=true
            shift
            ;;
        -d|--desktop)
        # script for my desktop https://pcpartpicker.com/list/2v7nzf
            echo "Now running scripts for your custom desktop"
            amd_cpu=true
            amd_gpu=true
            shift
            ;;
        -h|--help)
        # help
            echo "help requested"
            print_help
            exit 0
            ;;
        --)
            echo "i got here --"
            echo "$1"
            shift
#            break
            ;;
        *)
            #invalid input
            echo "Invalid input: option processing error: $1" 1>&2
            print_help
            exit 1
            ;;
    esac
    i=$((i+1))
done

#check for conflicts
if $amd_cpu && $intel_cpu; then
    echo "ERROR: Cannot specify both intel and amd cpu" 1>&2
    exti 1
fi

if $amd_gpu && $nvidia_gpu; then
    echo "ERROR: Cannot specify both amd and nvidia gpu" 1>&2
    exit 1
fi

#gpu
if $amd_gpu; then  
    echo "amdgpu"
fi
if $nvidia_gpu; then    
    echo "nvidia"
fi
if $amd_cpu; then
    echo "amdcpu"
fi
if $intel_cpu; then
    echo "intel"
fi