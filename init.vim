call plug#begin('~/.config/nvim/bundle')

"Theme
Plug 'liuchengxu/space-vim-dark'
Plug 'bling/vim-airline'

"NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'

"Code stuff
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-fugitive'

"Other stuff
Plug 'junegunn/goyo.vim'
Plug 'janko/vim-test'

call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-pairs']

"Leader
let mapleader="\<space>"

"Use system clipboard always
set clipboard+=unnamedplus

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

"vim-test
let g:test#javascript#ava#file_pattern = '.*\.test\.ts'

"Other
set updatetime=300
set signcolumn=yes
set splitbelow splitright

autocmd BufWritePre * %s/\s\+$//e

"Theme
let g:space_vim_dark_background = 233
colorscheme space-vim-dark

"NERDTree
map <C-N> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

autocmd BufEnter * call SyncTree()

"Remaps
noremap Y y$
nnoremap <C-Y> <C-R>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

inoremap <silent><expr> <c-space> coc#refresh()

nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>tf :TestFile<CR>
nmap <leader>ta :TestSuite<CR>

map <leader>f :Goyo \| set linebreak<CR>

"Functions
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
