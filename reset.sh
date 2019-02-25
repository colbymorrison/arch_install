#!/bin/bash
ping archlinux.org
timedatectl set-ntp true
timedatectl status
echo Mounting
mount /dev/sda1 /mnt/boot
ls /mnt/boot
mount /dev/sda2 /mnt
ls /mnt
ls /mnt/etc/fstab
