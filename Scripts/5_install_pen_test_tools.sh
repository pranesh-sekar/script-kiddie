#!/bin/bash

# Install Ruby Gems
sudo nala install rubygems python3 python3-pip python3.11-venv

# Install Cyber Security Tools
sudo nala install nmap gobuster openvpn
gem install evil-winrm

# Downloading SecLists
git clone https://github.com/danielmiessler/SecLists

# Downloading Responder
git clone https://github.com/lgandx/Responder

# Downloading Impacket
git clone https://github.com/SecureAuthCorp/impacket.git