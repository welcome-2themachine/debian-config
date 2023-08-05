#install fingerprint service
#! /bin/bash
apt install \
fprintd \
libpam-fprintd

#configure fingerprint service
fprintd-enroll
pam-auth-update