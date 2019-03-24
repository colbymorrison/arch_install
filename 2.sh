#!/bin/bash
# Post cfg pre chroot
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
mkswap /dev/sda3
swapon /dev/sda3
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
