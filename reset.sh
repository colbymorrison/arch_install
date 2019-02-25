#!/bin/bash
ping archlinux.org
timedatectl set-ntp true
timedatectl status
echo Mounting
mount /dev/sda1 /boot
ls /boot
mount /dev/sda2 /mnt
ls /mnt
ls /mnt/etc/fstab
