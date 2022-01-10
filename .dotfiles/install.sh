#!/bin/sh

# Set final keyboard layout
./keyboard_layout/set_layout.sh

# Install X and i3
sudo apt -y install xorg
sudo apt -y install i3

# Install terminal emulator rxvt with hack font
sudo apt -y install fonts-hack-ttf
sudo apt -y install rxvt-unicode

# Install zsh as default shell
sudo apt -y install zsh
chsh -s $(which zsh)
sudo ln -s ~/.zshrc /root/.zshrc
sudo ln -s ~/.aliases /root/.aliases
sudo ln -s ~/.dircolors /root/.dircolors
sudo rm -f /root/.history
sudo ln -s ~/.history /root/.history
sudo chsh -s $(which zsh)

# Set user directories
mkdir ~/downloads
mkdir ~/documents
mkdir ~/music
mkdir ~/pictures
mkdir ~/pictures/screenshots
mkdir ~/videos
mkdir ~/projects

# Install command-line tools
sudo apt -y install bat
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

# Install build system and Python
sudo apt -y install build-essential
sudo apt -y install python3-dev
sudo apt -y install python3-setuptools
sudo apt -y install python3-tk
sudo apt -y install python3-venv

# Install image viewer
sudo apt -y install feh

# Install multimedia command line tools
sudo apt -y install ffmpeg # video
sudo apt -y install imagemagick # image
sudo apt -y install poppler-utils # PDF documents

# Install Vivaldi web browser
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update && sudo apt -y install vivaldi-stable

# Install Visual Studio Code

# Install VLC medial player
sudo apt -y install vlc
sudo apt -y install avahi-daemon # for chromecast support

# Install Office
sudo apt -y install libreoffice

# Install Document Viewer
sudo apt -y install zathura
xdg-mime default org.pwmt.zathura.desktop application/pdf
