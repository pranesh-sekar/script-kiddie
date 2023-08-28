#!/bin/bash

# this is to connect shared folders in VMWare VMs
sudo vmhgfs-fuse .host:/ /mnt/hgfs/ -o allow_other -o uid=1000

# if the hgfs directory doesn't exist, try this
sudo vmhgfs-fuse .host:/ /mnt/ -o allow_other -o uid=1000

# software requirements may require installing the following tools beforehand:

sudo apt-get install open-vm-tools open-vm-tools-desktop

# others have claimed the following are required:

sudo apt-get install build-essential module-assistant linux-headers-virtual linux-image-virtual && sudo dpkg-reconfigure open-vm-tools



