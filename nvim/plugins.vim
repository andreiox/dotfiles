call plug#begin('~/.config/nvim/bundle')

    "Theme
    Plug 'gruvbox-community/gruvbox'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Code stuff
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'janko/vim-test'
    Plug 'mhartington/formatter.nvim'
    Plug 'jiangmiao/auto-pairs'

    "Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'

    "Utils
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    Plug 'jremmen/vim-ripgrep'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'mbbill/undotree'
    Plug 'unblevable/quick-scope'
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()
