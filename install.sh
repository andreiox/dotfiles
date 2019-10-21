#!/bin/bash

# vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# neovim files
ln -s ~/git/dotfiles/init.vim ~/.config/nvim
ln -s ~/git/dotfiles/coc-settings.json ~/.config/nvim

# tmux
ln -s ~/git/dotfiles/.tmux.conf ~/
