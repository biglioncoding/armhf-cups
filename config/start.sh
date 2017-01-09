#!/bin/sh
set -e
set -x
PASS=`cat /config/password`

if [ -e /.config ]
then
    echo start
    /usr/sbin/cupsd -f
else
    echo config
    cp /config/cupsd.conf /etc/cups
    echo "root:${PASS}" | chpasswd
    touch /.config
    /bin/hostname 
    /usr/sbin/cupsd -f
fi
