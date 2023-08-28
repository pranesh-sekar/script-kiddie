#!/bin/bash

# backup sources.list
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup

# edit sources.list
sudo tee /etc/apt/sources.list <<EOL
deb http://deb.debian.org/debian/ sid main contrib non-free
deb-src http://deb.debian.org/debian/ sid main contrib non-free
EOL

# update package lists
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

sudo apt autoremove

