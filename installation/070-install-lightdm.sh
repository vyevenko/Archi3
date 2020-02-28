#!/bin/bash
set -e

# source: https://dzone.com/articles/arch-linux-installation-on-hw-with-i3-windows-mana-1

echo "################################################################"
echo "Install Display Manager"   
echo "################################################################"

sudo pacman -S lightdm --noconfirm --needed

yay -S --noconfirm --needed lightdm-slick-greeter

sudo systemctl enable lightdm