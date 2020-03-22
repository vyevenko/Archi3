#!/bin/bash
set -e

sudo cp settings2/lightdm/* /etc/lightdm/
sudo sudo mkdir -p /usr/share/backgrounds/
sudo cp settings2/backgrounds/* /usr/share/backgrounds/


echo "################################################################"
echo "#########      root files copied                ################"
echo "################################################################"

yay -S --noconfirm qogir-gtk-theme-git
yay -S --noconfirm breeze-show-cursor-theme
sudo pacman -S --noconfirm papirus-icon-theme
sudo pacman -S gtk-engine-murrine gtk-engines