#!/bin/bash

# Install Ruby Gems
sudo nala install rubygems

# Install Cyber Security Tools
sudo nala install nmap gobuster openvpn
gem install evil-winrm

# Downloading SecLists
git clone https://github.com/danielmiessler/SecLists

# Downloading Responder
git clone https://github.com/lgandx/Responder