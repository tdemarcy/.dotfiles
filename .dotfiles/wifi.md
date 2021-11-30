# Wireless network configuration

## Wireless network interface
Show network interfaces.
```sh
ip a
```
Here the wireless network interface is `wlp2s0`.

## First Authentication
```sh
su -
wpa_passphrase SSID >> /etc/wpa_supplicant/wpa_supplicant.conf
```
Type PASSPHRASE.
```sh
echo "allow-hotplug wlp2s0" >> /etc/network/interfaces
echo "iface wlp2s0 inet dhcp" >> /etc/network/interfaces
echo "    wpa_conf /etc/wpa_supplicant/wpa_supplicant.conf" >> /etc/network/interfaces
reboot
```
With `allow-hotplug wlp2s0` as in the example above, the interface will be brought up automatically at boot.

## Device driver/firmware
Add non-free component and install firmware.
Here the driver is `iwlwifi`.

```sh
su -
sed -i 's/ main/ main non-free/g' /etc/apt/sources.list
apt update
apt install firmware-iwlwifi
```

## (Optional) Manually bring up your interface
```
sudo modprobe iwlwifi
sudo ip link set wlp2s0 up
```