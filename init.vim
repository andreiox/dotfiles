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
Plug 'pangloss/vim-javascript'

"Other stuff
Plug 'junegunn/goyo.vim'
Plug 'janko/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-pairs', 'coc-python', 'coc-prettier']

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
let g:test#javascript#ava#file_pattern = '.*\.test\.[tj]s'
let test#strategy = 'neovim'

"Other
set updatetime=300
set signcolumn=yes
set splitbelow splitright

autocmd BufWritePre * %s/\s\+$//e

"Theme
let g:space_vim_dark_background = 233
colorscheme space-vim-dark

"NERDTree
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$', '^.git']

" autocmd BufEnter * call SyncTree()

"NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

"FZF
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

"Remaps
noremap Y y$
nnoremap <C-Y> <C-R>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

inoremap <silent><expr> <c-space> coc#refresh()

nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>tf :TestFile --verbose --concurrency 2 --fail-fast<CR>
nmap <leader>ta :TestSuite --verbose --concurrency 2 --fail-fast<CR>

map <C-N> :NERDTreeToggle<CR>
map <leader>f :Goyo \| set linebreak<CR>
map <leader>q :FZF .<CR>
map <leader>vs :vsplit<CR>

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

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(10)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
    \ 'relative': 'editor',
    \ 'row': vertical,
    \ 'col': horizontal,
    \ 'width': width,
    \ 'height': height,
    \ 'style': 'minimal'
  \ }

  call nvim_open_win(buf, v:true, opts)
endfunction
