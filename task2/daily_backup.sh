#!/bin/bash

# What to backup
backup_files="/home"

# Our destination to backup
dest="/home/pilya/Downloads"

# Create archive filename.
day=$(date +"%y-%m-%d")
archive_file="$day.tgz"


# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files


# Print end status message.
echo "Backup finished"
date 


# Long listing of files in $dest to check file sizes.
ls -lh $dest


find $backup_files -name '21-12-01.tgz' -mtime +59 -delete 


