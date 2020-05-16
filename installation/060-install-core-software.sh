#!/bin/bash
set -e

# source: https://dzone.com/articles/arch-linux-installation-on-hw-with-i3-windows-mana-1

echo "################################################################"
echo "Install Fonts"   
echo "################################################################"

sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont \
ttf-liberation ttf-droid ttf-inconsolata ttf-roboto terminus-font ttf-font-awesome \
adobe-source-code-pro-fonts ttf-hack --noconfirm --needed

# yay -S nerd-fonts-terminus --noconfirm --needed
yay -S ttf-poppins --noconfirm --needed

echo "################################################################"
echo "Installing Sound Drivers and Tools"   
echo "################################################################"

sudo pacman -S alsa-utils alsa-plugins alsa-lib pavucontrol --noconfirm --needed

echo "################################################################"
echo "Installing additional tools for i3"   
echo "################################################################"

sudo pacman -S rxvt-unicode ranger rofi conky dmenu urxvt-perls \
perl-anyevent-i3 perl-json-xs \
openssh nemo pcmanfm xterm nitrogen sakura --noconfirm --needed

echo "################################################################"
echo "Installing X Window applications"   
echo "################################################################"

sudo pacman -S firefox --noconfirm --needed
sudo pacman -S nemo baobab net-tools wget transmission-gtk --noconfirm --needed

yay -S urxvt-font-size-git urxvt-tabbedex sublime-text --noconfirm --needed
yay -S xlunch-git --noconfirm --needed