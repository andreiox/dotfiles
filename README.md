# dotfiles

My dotfiles for nvim, alacritty, bspwm+sxhkd+polybar, NixOS, some helpful scripts and more!

## fresh install NixoS

### NixOS installer

Everything default except the desktop environment: `No Desktop`

### post install

1. `mkdir dev`

2. install git using `sudo nano /etc/nixos/configuration.nix`

3. `sudo nixos-rebuild switch`

4. `git clone https://github.com/andreiox/dotfiles`

5. `sudo nixos-rebuild switch -I nixos-config=/home/andre/dev/dotfiles/configuration.nix`

6. `./install.sh`
