#!/bin/sh

# Set final keyboard layout
./keyboard_layout/set_layout.sh

# Install X and i3
sudo apt -y install xorg
sudo apt -y install i3

# Install terminal emulator
sudo apt -y install fonts-hack-ttf
sudo apt -y install rxvt-unicode

# Install zsh
sudo apt -y install zsh
chsh -s $(which zsh)
sudo ln -s $HOME/.zshrc  /root/.zshrc
sudo ln -s $HOME/.aliases  /root/.bash_aliases