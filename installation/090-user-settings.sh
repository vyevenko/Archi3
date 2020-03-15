#!/bin/bash
set -e

echo "Moving files to start i3wm"
echo "Using Sardi icons, Arc theme and noto font from previous scripts"

cp settings2/root/.bash_profile ~/
cp settings2/root/.bashrc ~/
cp settings2/root/.xinitrc ~/
cp settings2/root/.profile ~/
cp settings2/root/.dmenurc ~/
cp settings2/root/.dmrc ~/

mkdir ~/.i3
cp settings2/root/config ~/.i3/

cp settings2/root/.Xresources ~/

cp settings2/root/blurlock /usr/local/bin/blurlock

echo "################################################################"
echo "#########      root files copied                ################"
echo "################################################################"

