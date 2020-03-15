#!/bin/bash
set -e

# Core stuff i3
# source: https://dzone.com/articles/arch-linux-installation-on-hw-with-i3-windows-mana-1

echo "################################################################"
echo "i3  improved tiling core files"
echo "################################################################"

sudo pacman -S --noconfirm --needed i3-gaps i3blocks i3lock scrot i3status numlockx imagemagick