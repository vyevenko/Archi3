#!/bin/bash

# Guide: https://wiki.archlinux.org/index.php/Installation_guide
# Source: https://medium.com/@gevorggalstyan/how-to-install-arch-linux-on-virtualbox-93bc83ded692
# Video: https://www.youtube.com/watch?v=EN9yo4dJ-O4
# ThinkPad X1 Carbon: https://linuxconfig.org/install-arch-linux-on-thinkpad-x1-carbon-gen-7-with-encrypted-filesystem-and-uefi
# https://devpew.com/blog/arch-install
# GDM: https://wiki.archlinux.org/index.php/GDM
ifconfig

# check network
ping google.com -c 3

# if failed:
ip addr flush dev enp0s3
ifconfig enp0s3 192.168.1.100 netmask 255.255.255.0
route add default gw 192.168.1.1
echo "nameserver 192.168.1.1" >> /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# update system clock
timedatectl set-ntp true

# Partition Disk
fdisk -l

cfdisk
# select dos

# Create File System
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkswap /dev/sda2

# mount directories
swapon /dev/sda2
mount /dev/sda1 /mnt
mkdir /mnt/home
mount /dev/sda3 /mnt/home

# Bootstrap system
pacstrap /mnt base base-devel linux linux-firmware nano dhcpcd net-tools iproute2 grub rxvt-unicode git curl

# Create fstab
genfstab -U /mnt >> /mnt/etc/fstab

# Arch Linux System Configuration
arch-chroot /mnt /bin/bash

# install nano
pacman -S nano

# update MirrorList:
curl -o /etc/pacman.d/mirrorlist "https://www.archlinux.org/mirrorlist/?country=UA&country=DE&protocol=https&use_mirror_status=on"
nano /etc/pacman.d/mirrorlist
# uncomment servers

# Set System Language:
nano /etc/locale.gen 
# uncomment en_US.UTF-8 UTF-8
# uncomment uk_UA.UTF-8 UTF-8
locale-gen
echo "LANG=en_US.UTF-8"  > /etc/locale.conf

# Set Timezone
ln -sf /usr/share/zoneinfo/Europe/Kiev /etc/localtime
hwclock --systohc 

# Set Hostname
echo "vyeve.arch" > /etc/hostname

# Add matching entries to hosts:
nano /etc/hosts
# 127.0.0.1	localhost
# ::1		localhost
# 127.0.1.1	myhostname.localdomain	myhostname

# Initframes
mkinitcpio -P
# Set Root password
passwd

# Install GRUB Boot Loader
pacman -S grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# Install dhcpcd
pacman -S dhcpcd
systemctl enable dhcpcd

# create user
# https://github.com/jasonh9/codeetuts/wiki/Creating-users-on-Arch-Linux
useradd -m -G wheel vyeve
passwd vyeve

nano /etc/sudoers
# uncomment: # %wheel ALL=(ALL) ALL

#update keys
pacman-key --init
pacman-key --populate archlinux

# exit
exit
umount -R /mnt
poweroff

##########################
##     Install i3wm     ##
##########################

# https://www.youtube.com/watch?time_continue=128&v=fV17DgsQcsY&feature=emb_logo
# https://www.youtube.com/watch?v=oSgtKyZUM4M
# https://github.com/erikdubois/Archi3
# https://github.com/vyevenko/Archi3.git
sudo pacman -S i3
# choose: i3-gaps, i3blocks, i3lock, i3status
sudo pacman -S git
git clone https://github.com/erikdubois/Archi3
cd archi3/installation
./030-install-xorg-...
./040-install-packer-for-aur-make-build-v1.sh
./050-install-i3wm-core-v1.sh

# in case unknown public key error:
gpg --recv-key $KEYID
