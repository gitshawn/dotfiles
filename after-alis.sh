#!/bin/sh

# Simple fancy echo function
fancy_echo() {
  local fmt="$1"; shift
  printf "\\n - = - $fmt\\n" "$@"
}

fancy_echo "Install X, openbox and related packages" 
pacman -S --noconfirm \
xorg-server \
xorg-xinit \
noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk \
ttf-fira-code \ 
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

fancy_echo "Apply post install configs"
