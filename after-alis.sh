#!/bin/bash

# Simple fancy echo function
fancy_echo() {
  local fmt="$1"; shift
  printf "\\n - = - $fmt\\n" "$@"
}

fancy_echo "Install X and related packages" 
pacman -S --noconfirm \
xorg-server \
xorg-xinit \
noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk \
ttf-fira-code

fancy_echo "Install openbox and related packages" 
pacman -S --noconfirm \
openbox \
obconf \
feh \
volumeicon \
tint2

fancy_echo "Install system utils" 
pacman -S --noconfirm \
alacritty \
maim \
git 

fancy_echo "Get my dotfiles"
git clone https://github.com/gitshawn/dotfiles.git
mv dotfiles/.xinitrc .
# cp -r dotfiles/.config/* ./config
# rm -rf dotfiles

fancy_echo "Apply post install configs"
