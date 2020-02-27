#!/bin/bash

echo "################################################################"
echo "Downloading the files from github to tmp directory"

rm -rf /tmp/aureola

git clone https://github.com/erikdubois/Aureola /tmp/aureola

mkdir ~/.aureloa
mv -f /tmp/aureola ~/.aureola

rm -rf /tmp/aureola

echo "################################################################"
echo "###################    aureola installed  ######################"
echo "################################################################"
