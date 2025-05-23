#!/bin/sh

CONFIGDIR=~/.config
[ ! -d "$CONFIGDIR" ] && mkdir $CONFIGDIR


# ============= POLYBAR

ln -sf $HOME/dev/dotfiles/polybar $HOME/.config


# ============= ZSH

ln -sf $HOME/dev/dotfiles/zsh $HOME/.config
ln -sf $HOME/dev/dotfiles/zsh/.zprofile $HOME/.profile
ln -sf $HOME/dev/dotfiles/zsh/.zprofile $HOME/.bash_profile
ln -sf $HOME/dev/dotfiles/zsh/.zprofile $HOME/.zprofile


# ============= xinitrc

ln -sf $HOME/dev/dotfiles/.xinitrc $HOME/.xinitrc


# ============= fix cedilha with XCompose

ln -sf $HOME/dev/dotfiles/.XCompose $HOME/.XCompose


# ============= aliasrc

ln -sf $HOME/dev/dotfiles/aliasrc $HOME/.config/aliasrc


# ============= bspwm

ln -sf $HOME/dev/dotfiles/bspwm $HOME/.config
ln -sf $HOME/dev/dotfiles/sxhkd $HOME/.config


# ============= scripts

rm -rf $HOME/.scripts
ln -s $HOME/dev/dotfiles/scripts $HOME/.scripts


# ============= wallpaper folder

mkdir -p $HOME/Images/wallpapers


# ============= POLYBAR

ln -sf $HOME/dev/dotfiles/alacritty $HOME/.config


# ============= NEOVIM

rm -rf ~/.config/nvim
ln -s $HOME/dev/dotfiles/nvim/ ~/.config/nvim

# packer
PACKERDIR=~/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ ! -d "$PACKERDIR" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim $PACKERDIR
fi

# packer install plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'


# ============ done

echo "andreiox dotfiles installation is done."
