#!/bin/sh

# ============= NEOVIM

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/plugin

for f in `find . -regex ".*\.vim$\|.*\.lua$"`; do
    rm -rf ~/.config/$f
    ln -s ~/git/dotfiles/$f ~/.config/$f
done

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

rm -rf $HOME/.scripts

ln -s $HOME/git/dotfiles/scripts $HOME/.scripts
