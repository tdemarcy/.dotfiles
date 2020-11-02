# Installation guide
A minimal distribution for code edition based on Raspberry Pi OS Lite with i3

This dotfiles use the ["bare repository and alias method"](https://wiki.archlinux.org/index.php/Dotfiles).

## Change username and password
Boot. Default username is `pi`, default password is `raspberry` and default keyboard layout is set to UK.

```sh
sudo -i
adduser tdemarcy
adduser tdemarcy sudo
logout
```
Login back as `tdemarcy`.

```sh
sudo deluser pi
sudo passwd root
```

## Disable black border
```sh
sudo sed -i '/disable_overscan/s/^#//g' /boot/config.txt
```

## Update
```sh
sudo apt update
sudo apt upgrade
```

## Clone this dotfiles repository
```sh
sudo apt install git
git clone --bare https://github.com/tdemarcy/dotfiles.git $HOME/.dotfiles
```
