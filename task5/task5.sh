#!/bin/bash

# find all links on VM
 sudo find  / -type l -ls

# find cuont of block
 sed -n '/^Block/, /^$/ { /^$/ !p }' /proc/devices

# find of character devices
 sed -n '/^Character/, /^$/ { /^$/ !p }' /proc/devices

# find all folder with sticky bit
 sudo find / -type d -perm -1000 -exec ls -ld {} \;

# make soft link
 ln -s /etc/hostname /tmp/folder/

# add new user
 sudo useradd testuser
 sudo passwd testuser


# Create folder with testuser
su -c "mkdir /home/testuser/testuser_data" testuser
