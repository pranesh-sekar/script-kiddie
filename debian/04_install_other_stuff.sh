#!/bin/bash

# update package lists - skip in debian 12 or above (already installed)
sudo apt update
sudo apt install open-vm-tools-desktop

# install Git
sudo apt install git

# install Net Tools (for ifconfig)
sudo apt install net-tools

# install Nala
sudo apt install nala

# install Gnome Tweaks - skip in debian 12 or above (already installed)
sudo apt install gnome-tweak-tool

# install Yaru Theme
sudo apt install yaru*

# configure Gnome Tweaks - Window Icons, Apperance

# remove Gnome Games
sudo apt remove gnome-games

# remove Gnome Terminal and install Gnome Console
sudo apt install gnome-console
sudo apt remove gnome-terminal

# install Flatpak and add the Flathub repository
sudo apt install flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install Flatpaks
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub io.github.realmazharhussain.GdmSettings

# apply Current Display Settings to GDM via Login Manager
flatpak run io.github.realmazharhussain.GdmSettings

# install Extensions
# User themes, Extensions Sync, Dash to Dock, Alphabetcal App Grid
flatpak run com.mattjakeman.ExtensionManager

# add GTK4 UI to Firefox (open Firefox once before updating)
sudo apt install curl
curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash

# update the number of workspaces allowed

# update favorites in Dock

exit 0
