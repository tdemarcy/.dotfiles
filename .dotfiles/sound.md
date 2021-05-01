# Sound Configuration

## Device firmware
Check that non-free component are added to /etc/apt/sources.list.
Here the driver is `Realtek`. See `head -1 /proc/asound/card1/codec*`.

```sh
sudo apt install firmware-realtek
```

## Add user to audio group
```sh
su -
adduser USERNAME audio
```

## Install PulseAudio daemon and front-end
```sh
sudo apt install pulseaudio
sudo apt install pulsemixer
```

