#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

sudo chown root:root resources/sources.list
sudo chown root:root resources/preferences
sudo mv resources/sources.list /etc/apt/sources.list
sudo mv resources/preferences /etc/apt/