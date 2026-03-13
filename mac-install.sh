#!/bin/sh

# ============= aliasrc

ln -sf $HOME/dev/andreiox/dotfiles/aliasrc $HOME/.config/aliasrc


# ============= NEOVIM

rm -rf ~/.config/nvim
ln -s $HOME/dev/andreiox/dotfiles/nvim/ ~/.config/nvim

# packer
PACKERDIR=~/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ ! -d "$PACKERDIR" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim $PACKERDIR
fi

# packer install plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerUpdate'


# ============ done

echo "andreiox dotfiles installation is done."

