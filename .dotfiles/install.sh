#!/bin/sh

# Set final keyboard layout
.keyboard_layout/set_layout.sh

# Install X and i3
sudo apt -y install xorg
sudo apt -y install i3
sudo apt -y install fonts-hack-ttf
sudo apt -y install rxvt-unicode
sudo apt -y install zsh
