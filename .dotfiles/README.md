# Installation guide
A minimal distribution for code edition based on Raspberry Pi OS Lite with i3

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
