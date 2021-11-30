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

# Set user directories
mkdir $HOME/downloads
mdkir $HOME/documents
mkdir $HOME/music
mkdir $HOME/pictures
mkdir $HOME/videos

# Install command-line tools
sudo apt -y install curl
sudo apt -y install fzf
sudo apt -y install htop
sudo apt -y install rsync
sudo apt -y install scrot
sudo apt -y install tree
sudo apt -y install unzip
sudo apt -y install wget
sudo apt -y install xclip

# Install vim
sudo apt -y install vim

# Install build system
sudo apt -y install build-essential
sudo apt -y install python3-dev
sudo apt -y install python3-tk

# Install image viewer
sudo apt -y install feh

# Install Vivaldi web browser
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update && sudo apt -y install vivaldi-stable

# Install Visual Studio Code

# Install VLC medial player
sudo apt -y install vlc

# Install Office
sudo apt -y install libreoffice

# Install Document Viewer
sudo apt -y install zathura

# Install multimedia command line tools
sudo apt install ffmpeg
sudo apt install imagemagick