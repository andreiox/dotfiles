call plug#begin('~/.config/nvim/bundle')

Plug 'liuchengxu/space-vim-dark'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-prettier']

call plug#end()

let g:deoplete#enable_at_startup = 1

"Highlighting
set inccommand=split
set number
set relativenumber
set showcmd
set showmatch

"Formatting
set smarttab
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wrap
set ffs=unix,dos,mac
set encoding=utf8

"Search
set magic
set incsearch
set nohlsearch
set ignorecase
set smartcase

"Theme
let g:space_vim_dark_background = 233
colorscheme space-vim-dark

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

noremap Y y$

map <C-N> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
