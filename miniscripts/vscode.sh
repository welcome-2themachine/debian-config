#! /bin/bash 

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

wget -O code.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i code.deb
rm code.deb