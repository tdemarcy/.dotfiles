# Wireless network configuration

## Device driver/firmware
Add non-free component and install firmware.
Here the driver is `iwlwifi` and the wireless network interface is `wlp2s0`.

```sh
sudo sed -i 's/ main/ main non-free/g' /etc/apt/sources.list
sudo apt install firmware-iwlwifi
sudo modprobe -r iwlwifi
sudo modprobe iwlwifi
sudo ip link set wlp2s0 up
```

## Authentication
```sh
su -
wpa_passphrase SSID >> /etc/wpa_supplicant/wpa_supplicant.conf
```
Type PASSPHRASE
```sh
echo "allow-hotplug wlp2s0" >> /etc/network/interfaces
echo "iface wlp2s0 inet dhcp" >> /etc/network/interfaces
echo "    wpa_conf /etc/wpa_supplicant/wpa_supplicant.conf" >> /etc/network/interfaces
logout
```

