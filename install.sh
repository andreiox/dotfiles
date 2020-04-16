#!/bin/sh

# create .config folder (is this necessary?)
mkdir $HOME/.config


# ============= NEOVIM

mkdir $HOME/.config/nvim
ln -sf $HOME/git/dotfiles/nvim/* $HOME/.config/nvim

# vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim-plug install plugs
nvim +PlugInstall +UpdateRemotePlugins +qall


# ============= POLYBAR

ln -sf $HOME/git/dotfiles/polybar $HOME/.config


# ============= ZSH

ln -sf $HOME/git/dotfiles/zsh $HOME/.config
ln -sf $HOME/git/dotfiles/zsh/.zprofile $HOME/.profile
ln -sf $HOME/git/dotfiles/zsh/.zprofile $HOME/.bash_profile
ln -sf $HOME/git/dotfiles/zsh/.zprofile $HOME/.zprofile


# ============= xinitrc

ln -sf $HOME/git/dotfiles/.xinitrc $HOME/.xinitrc


# ============= aliasrc

ln -sf $HOME/git/dotfiles/aliasrc $HOME/.config/aliasrc


# ============= bspwm

ln -sf $HOME/git/dotfiles/bspwm $HOME/.config
ln -sf $HOME/git/dotfiles/sxhkd $HOME/.config


# ============= scripts

ln -sf $HOME/git/dotfiles/scripts $HOME/.scripts
