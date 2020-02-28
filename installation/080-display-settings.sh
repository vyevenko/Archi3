#!/bin/bash
set -e

sudo cp settings2/lightdm/* /etc/lightdm/
sudo sudo mkdir -p /usr/share/background/
sudo cp settings2/background/* /usr/share/background/


echo "################################################################"
echo "#########      root files copied                ################"
echo "################################################################"

