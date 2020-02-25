#!/bin/bash
set -e

echo "################################################################"
echo "####             Installing reflector if needed              ###"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector


echo "################################################################"
echo "####   finding fastest servers be patient in BE NL FR DE GB  ###"
echo "################################################################"

# finding the fastest archlinux servers

sudo reflector -l 100 -f 10 -c UA -c DE -c CZ --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d


echo "################################################################"
echo "####       fastest servers above countries saved             ###"
echo "################################################################"


cat /etc/pacman.d/mirrorlist


sudo pacman -Syyu


echo "################################################################"
echo "###############       mirrorlist updated      ###################"
echo "################################################################"

