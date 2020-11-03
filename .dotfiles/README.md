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
logout
```
Login back as `tdemarcy`.

```sh
sudo deluser pi
sudo passwd root
```

## Set keyboard layout to US
```sh
sudo sed -i 's/^XKBLAYOUT.*/XKBLAYOUT="us"/' /etc/default/keyboard
```

## Configure Wi-Fi
```sh
sudo wpa_cli
add_network
set_network 0 ssid "SSID"
set_network 0 psk "PASSPHRASE"
enable_network 0
save_config
quit
```

## Disable black border
```sh
sudo sed -i '/disable_overscan/s/^#//g' /boot/config.txt
```

## Reboot and update
```sh
reboot
```
Login.

```sh
sudo apt update
sudo apt upgrade
```

## Clone this dotfiles repository
```sh
sudo apt install git
git clone --bare https://github.com/tdemarcy/dotfiles.git $HOME/.dotfiles
rm .bashrc
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
```
