#!/bin/bash

# Update package lists - skip in debian 12 or above (already installed)
sudo apt update
sudo apt install open-vm-tools-desktop

# Install Git
sudo apt install git

# Install Nala
sudo apt install nala

# Install Gnome Tweaks - skip in debian 12 or above (already installed)
sudo nala install gnome-tweak-tool

# Install Yaru Theme
sudo nala install yaru*

# Configure Gnome Tweaks - Window Icons, Apperance

# Remove Gnome Games
sudo nala remove gnome-games

# remove Gnome Terminal and install Gnome Console
sudo nala install gnome-console
sudo nala remove gnome-terminal

# Install Flatpak and add the Flathub repository
sudo nala install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Flatpaks
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub io.github.realmazharhussain.GdmSettings

# Apply Current Display Settings to GDM via Login Manager
flatpak run io.github.realmazharhussain.GdmSettings

# Install Extensions
# User themes, Extensions Sync, Dash to Dock
flatpak run com.mattjakeman.ExtensionManager

# Add GTK4 UI to Firefox (Open Firefox once before updating)
sudo nala install curl
curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash

# update the number of workspaces allowed

# update favorites in Dock

exit 0
