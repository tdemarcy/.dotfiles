# Installation guide
A minimal Debian for code edition

This dotfiles use the ["bare repository and alias method"](https://wiki.archlinux.org/index.php/Dotfiles).

Initial hardware-specific installation:
* [ARM/Raspberry Pi OS Lite](pi.md)
* [AMD/Debian](debian.md)

## Clone this dotfiles repository
```sh
sudo apt install git
git clone --bare https://github.com/tdemarcy/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
.dotfiles/install.sh
```

## Cross-theming
[Base16](http://chriskempson.com/projects/base16/) default-dark theme