#!/bin/bash

# install Ruby Gems
sudo apt install rubygems python3 python3-pip python3.11-venv

# install Cyber Security Tools
sudo apt install nmap gobuster openvpn
gem install evil-winrm

# downloading SecLists
git clone https://github.com/danielmiessler/SecLists

# downloading Responder
git clone https://github.com/lgandx/Responder

# downloading Impacket
git clone https://github.com/SecureAuthCorp/impacket.git