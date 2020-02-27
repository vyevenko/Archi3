#!/bin/bash
set -e

echo " Xserver setup"

sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm rxvt-unicode --noconfirm --needed
echo
echo "################################################################"
echo "choose virtualbox-guest-modules-arch in the next installation"
echo "################################################################"

sleep 2

echo "################################################################"
echo "###################    specific driver    ######################"
echo "################################################################"

# Nvidia:
# sudo pacman -S xf86-video-nouveau --noconfirm --needed
# Intel:
# sudo pacman -S xf86-video-intel --noconfirm --needed
# AMD:
# sudo pacman -S xf86-video-ati --noconfirm --needed
# VirtualBox:
sudo pacman -S virtualbox-guest-utils 

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"