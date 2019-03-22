#!/bin/bash
# For booting into existing live entironment on Virtual Box
ping archlinux.org
timedatectl set-ntp true
timedatectl status
echo Mounting
mount /dev/sda2 /mnt
ls /mnt
mount /dev/sda1 /mnt/boot
ls /mnt/boot
ls /mnt/etc/fstab
hwclock --systohc
