#!/bin/bash
set -e

sudo pacman -S git --needed --noconfirm

########################################
########         Y A Y          ########
########################################


# source : https://www.ostechnix.com/yay-found-yet-another-reliable-aur-helper/

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ../
rm -rf yay/