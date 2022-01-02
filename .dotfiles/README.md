# Installation guide
A minimal Debian for code edition

This dotfiles use the ["bare repository and alias method"](https://wiki.archlinux.org/index.php/Dotfiles).

## Initial hardware-specific installation
* [AMD/Debian](debian.md)
* [ARM/Raspberry Pi OS Lite](pi.md)
* [Keyboard](keyboard_layout/keyboard_layout.md)
* [Wi-Wi](wifi.md)
* [Sound](sound.md)

## Clone this dotfiles repository
```sh
sudo apt install git
git clone --bare https://github.com/tdemarcy/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
```

## Install applications
```sh
.dotfiles/install.sh
```

## Cross-theming
[Base16](http://chriskempson.com/projects/base16/) default-dark theme
* X resources
* i3 (using values from X resources)
* i3status
* dunst
* [Base16 Generator Extension](https://github.com/golf1052/base16-vscode) for vscode
* dark background for feh image viewer

## Frequently used applications
* [Python](python.md)
* [Docker](docker.md)
* [Mouse](mouse.md)