#! /bin/bash

# Created Date: Thursday, 03 August 2023
# Author: welcome-2themachine
# License: GPL3

apt install \
fprintd \
libpam-fprintd

#configure fingerprint service
fprintd-enroll
pam-auth-update