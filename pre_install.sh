#!/bin/bash

#Define variables here
$USERNAME = ""
$PASSWORD = ""
$ROOTPASSWORD = ""
$CONTINENT = ""
$COUNTRY_CAPITAL_NAME = ""
$LANG = ""
$HOSTNAME = ""


#Connect to wifi
wifi-menu

#Set time and date
timedatectl set-ntp true


#Partioning the disks
fdisk /dev/sda

#Delete all partitions (using d)

# Create new partitions
    #dev/sda1 (BOOT MENU)
    n #new partition
    p #primary partiion
    1 #ID
    2048 #Partion starting address
    +200M # Last sector address
    Y # Remove previous drive signature

    #dev/sda2 (SWAP)
    n #new partition
    p #primary partiion
    2 #ID
    411648 #Partion starting address
    +16G # Last sector address
    Y # Remove previous drive signature

    #dev/sda3 (ROOT)
    n #new partition
    p #primary partiion
    3 #ID
    #Partion starting address
    +25G # Last sector address
    Y # Remove previous drive signature

    #dev/sda4 (HOME)
    n #new partition
    p #primary partiion
    4 #ID
    #Partion starting address
    # Last sector address
    Y # Remove previous drive signature

#Write partition changes to drive
w

# Make filesystems
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4

mkswap /dev/sda2
swapon /dev/sda2

# Mount partitions
mount /dev/sda3 /mnt
mkdir /mnt/home
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home

#Install base and basedevel of Arch Linuc
pacstrap /mnt base base-devel

#Generate a FSTAB file
genfstab -U /mnt >> /mnt/etc/fstab

# Log into arch system (change from USB to HDD)
arch-chroot /mnt

#Install network manager
pacman -S networkmanager
systemctl enable NetworkManager

#Install bootlaoder
pacman -S grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

#Set a password
passwd # Root

#Generate a non-root user
useradd -m chrystallic
passwd chrystallic
usermod -aG wheel chrystallic
mkdir -p /home/chrystallic
chown chrystallic:wheel /home/chrystallic


# Generate locale-settings
nano /etc/locale.gen
locale-gen

echo LANG=en-US.UTF-8 >> /etc/locale.conf
ln -sf /usr/share/zoneinfo/Europe/Oslo /etc/localtime

# Set a hostname
echo kraken >> /etc/hostname

# Unmount and reboot pc
exit
umount -R /mnt
reboot
