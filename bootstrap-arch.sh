#!/usr/bin/env bash
set -e

# Inspired by download.sh file from package:
# Arch Linux Install Script (alis) by picodotdev
# Downloads other scripts and conf files from my repo and executes alis.sh

curl -O https://raw.githubusercontent.com/gitshawn/dotfiles/main/alis.conf
curl -O https://raw.githubusercontent.com/gitshawn/dotfiles/main/alis.sh
curl -O https://raw.githubusercontent.com/gitshawn/dotfiles/main/alis-reboot.sh

chmod +x alis.sh
chmod +x alis-reboot.sh

echo 'y' | ./alis.sh
wait
