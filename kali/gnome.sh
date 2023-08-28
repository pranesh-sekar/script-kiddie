# switch to Gnome
sudo apt update
sudo apt install -y kali-desktop-gnome
sudo update-alternatives --config x-session-manager
## optional - to remove xfce
sudo apt purge --autoremove kali-desktop-xfce


# enable wayland
echo $XDG_SESSION_TYPE
## If the output is wayland, then yes, your desktop is running under Wayland. If the output is x11, then your desktop is running under X11.
sudo mkdir -p /etc/systemd/system/gdm.service.d
sudo ln -sf /dev/null /etc/systemd/system/gdm.service.d/disable-wayland.conf

# to disable wayland
sudo rm /etc/systemd/system/gdm.service.d/disable-wayland.conf


# enable wayland in firefox
gnome-text-editor ~/.profile
## add this line to end of file
export MOZ_ENABLE_WAYLAND=1
