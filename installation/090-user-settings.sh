#!/bin/bash
set -e

echo "Moving files to start i3wm"
echo "Using Sardi icons, Arc theme and noto font from previous scripts"

cp settings2/.bash_profile ~/
cp settings2/.bashrc ~/
cp settings/.gtkrc-2.0 ~/
cp settings2/.xinitrc ~/
cp settings/settings.ini ~/.config/gtk-3.0/


echo "################################################################"
echo "#########      root files copied                ################"
echo "################################################################"

