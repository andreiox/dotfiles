#!/bin/sh

# ============= NEOVIM

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/plugin

for f in `find . -regex ".*\.vim$\|.*\.lua$"`; do
    rm -rf ~/.config/$f
    ln -s ~/dev/dotfiles/$f ~/.config/$f
done

# vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim-plug install plugs
# nvim +PlugInstall +UpdateRemotePlugins +qall


# ============= POLYBAR

ln -sf $HOME/dev/dotfiles/polybar $HOME/.config


# ============= ZSH

ln -sf $HOME/dev/dotfiles/zsh $HOME/.config
ln -sf $HOME/dev/dotfiles/zsh/.zprofile $HOME/.profile
ln -sf $HOME/dev/dotfiles/zsh/.zprofile $HOME/.bash_profile
ln -sf $HOME/dev/dotfiles/zsh/.zprofile $HOME/.zprofile


# ============= xinitrc

ln -sf $HOME/dev/dotfiles/.xinitrc $HOME/.xinitrc


# ============= aliasrc

ln -sf $HOME/dev/dotfiles/aliasrc $HOME/.config/aliasrc


# ============= bspwm

ln -sf $HOME/dev/dotfiles/bspwm $HOME/.config
ln -sf $HOME/dev/dotfiles/sxhkd $HOME/.config


# ============= scripts

rm -rf $HOME/.scripts

ln -s $HOME/dev/dotfiles/scripts $HOME/.scripts
