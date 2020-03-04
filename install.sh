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
