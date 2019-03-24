#!/bin/bash
# Post chroot
ln -sf /usr/share/zoneinfo/america/New_York /etc/localtime
hwclock --systohc
cat /etc/local.gen | sed 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8'
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo archyboi > /etc/hostname
cat << EOF >> /etc/hosts
127.0.0.1   localhost
::1         localhost
127.0.0.1   archyboi.localdomain  archyboi
EOF
passwd
