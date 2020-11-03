#!/bin/sh

# Set final keyboard layout
sh $HOME/.dotfiles/keyboard_layout/set_layout.sh

# Install X and i3
sudo apt install xorg
sudo apt install i3
