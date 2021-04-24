call plug#begin('~/.config/nvim/bundle')

    "Theme
    Plug 'gruvbox-community/gruvbox'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Code stuff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'janko/vim-test'

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
