#!/bin/bash

rm -rf /usr/local/etc/OneDrive
mkdir -p /usr/local/etc/OneDrive
wget --no-check-certificate -q -O /usr/local/etc/OneDrive/json-parser "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/Business/json-parser"
wget --no-check-certificate -q -O /usr/local/etc/OneDrive/onedrive "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/Business/onedrive"
wget --no-check-certificate -q -O /usr/local/etc/OneDrive/onedrive-d "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/Business/onedrive-d"
wget --no-check-certificate -q -O /usr/local/etc/OneDrive/onedrive-authorize "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/Business/onedrive-authorize"
wget --no-check-certificate -q -O /usr/local/etc/OneDrive/onedrive-base "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/Business/onedrive-base"
wget --no-check-certificate -q -O /usr/local/etc/OneDrive/onedrive.cfg "https://raw.githubusercontent.com/iiiiiii1/OneDrive/master/Business/onedrive.cfg"
chmod -R a+x /usr/local/etc/OneDrive
ln -sf /usr/local/etc/OneDrive/onedrive /usr/local/bin/
ln -sf /usr/local/etc/OneDrive/onedrive-d /usr/local/bin/

rm -rf $(basename "$0")
