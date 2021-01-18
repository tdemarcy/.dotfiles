# Raspberry Pi OS Lite installation

## Change username and password
Boot. Default username is `pi`, default password is `raspberry` and default keyboard layout is set to UK.

```sh
sudo -i
adduser USERNAME
adduser USERNAME sudo
logout
logout
```
Login back as `USERNAME`.

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
sudo rfkill unblock 0
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