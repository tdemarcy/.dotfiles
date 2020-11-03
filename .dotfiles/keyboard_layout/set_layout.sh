#!/bin/sh

# Set /etc/default/keyboard
sudo sed -i 's/^XKBLAYOUT.*/XKBLAYOUT="us"/' /etc/default/keyboard
sudo sed -i 's/^XKBVARIANT.*/XKBVARIANT="fr"/' /etc/default/keyboard # custom variant
sudo sed -i 's/^XKBOPTIONS.*/XKBOPTIONS="lv3:ralt_switch,compose:rwin"/' /etc/default/keyboard

# Add custom variant
sudo cat $HOME/.dotfiles/keyboard_layout/us_fr >> /usr/share/X11/xkb/symbols/us
