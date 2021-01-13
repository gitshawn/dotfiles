## My dotfiles and Arch linux bootstrap script (For my local desktop)

### Heavily inspired by:
- https://github.com/dougmaitelli/dotfiles
- https://github.com/picodotdev/alis
<BR>Thank you!

To bootstrap your local machine like mine:
- Boot to local Arch installation media:
  https://archlinux.org/download/
- `curl -sL https://raw.githubusercontent.com/gitshawn/dotfiles/main/bootstrap-arch.sh | bash`
(You probably want to clone those files first and change some settings to your liking, but to each their own...)
- The machine should reboot itself; when it comes back up:
- Login as a non-root user
- `curl -sL https://raw.githubusercontent.com/gitshawn/dotfiles/main/after-alis.sh | bash`
