#!/bin/sh

# Set final keyboard layout
keyboard_layout/set_layout.sh

# Install X and i3
sudo apt -y install xorg
sudo apt -y install i3

# Install terminal emulator rxvt with hack font
sudo apt -y install fonts-hack-ttf
sudo apt -y install rxvt-unicode

# Install zsh as default shell
sudo apt -y install zsh
chsh -s $(which zsh)
sudo ln -s $HOME/.zshrc /root/.zshrc
sudo ln -s $HOME/.aliases /root/.aliases
sudo chsh -s $(which zsh)

# Install command-line tools
sudo apt -y install curl
sudo apt -y install wget
sudo apt -y install tree
sudo apt -y install fzf
sudo apt -y install htop
sudo apt -y install scrot
sudo apt -y install pulsemixer

# Install vim
sudo apt -y install vim

# Install build system
sudo apt -y install build-essential
sudo apt -y install python3-dev
sudo apt -y install python3-tk

# Install image viewer
sudo apt -y install feh

# Install Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'
sudo apt update && sudo apt install vivaldi-stable