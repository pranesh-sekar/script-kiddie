#!/bin/bash

# Install Cyber Security Tools
sudo nala install nmap gobuster openvpn

# Downloading SecLists
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \
  && unzip SecList.zip \
  && rm -f SecList.zip \
  && mv SecLists-master/ SecLists/
