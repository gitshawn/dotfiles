#!/bin/bash

# Simple fancy echo function
fancy_echo() {
  local fmt="$1"; shift
  printf "\\n - = - $fmt\\n" "$@"
}

fancy_echo "Install pacman packages" 
sudo pacman -S --noconfirm \
xorg-server \
xorg-xinit \
noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk \
ttf-fira-code \
obconf \
feh \
xdotool \
volumeicon \
tint2 \
pcmanfm \
rofi \
maim \
git \
xterm \
firefox-developer-edition \
arandr
# openbox \
# lightdm \
# light-locker \
# oblogout \
# rxvt-unicode \

# fancy_echo "Install obmenu-generator (AUR)"
# git clone https://aur.archlinux.org/obmenu-generator.git
# cd obmenu-generator
# makepkg -si

fancy_echo "Get my dotfiles and copy them here"
git clone https://github.com/gitshawn/dotfiles.git
cp -r dotfiles/.* ~/
# mkdir -p ~/.config
# cp -r dotfiles/.config/* ~/.config
rm -rf dotfiles

# fancy_echo "Apply post install configs"
