"Things that doesnt depend on plugins

"Leader
let mapleader="\<space>"

"Use system clipboard always
set clipboard+=unnamedplus

"Highlighting
set inccommand=split
set number
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

"Other
set updatetime=300
set signcolumn=yes
set splitbelow splitright
set scrolloff=3

"Remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

"Vim transparency
hi Normal guibg=NONE ctermbg=NONE

"Remaps
noremap Y y$
nnoremap <C-Y> <C-R>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>sp :split<CR>


"Just plugin things from here on out

call plug#begin('~/.config/nvim/bundle')

    "Theme
    Plug 'morhetz/gruvbox'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Code stuff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'janko/vim-test'

    "Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    "Utils
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    Plug 'jremmen/vim-ripgrep'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'mbbill/undotree'
    Plug 'caenrique/nvim-maximize-window-toggle'

call plug#end()

"Coc extensions
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-pairs', 'coc-python', 'coc-prettier']

"Theme
set termguicolors
colorscheme gruvbox

"Vim Airline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

"NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

"vim-test
let g:test#javascript#ava#file_pattern = '.*\.test\.[tj]s'

if has('nvim')
    let test#strategy = 'neovim'
    tmap <C-o> <C-\><C-n>
endif

"FZF
let $FZF_DEFAULT_COMMAND =  "find . -path ./.git -prune -o -path ./node_modules -prune -o -path ./dist -prune -o -path ./.vscode -prune -o -path ./.ebextensions -prune -o -print"
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

if executable('rg')
    let g:rg_derive_root='true'
endif

"Remaps
inoremap <silent><expr> <c-space> coc#refresh()

nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nnoremap <leader>gr <Plug>(coc-references)
nnoremap <leader>dia :<C-u>CocList diagnostics<CR>
nnoremap <leader>tf :TestFile --verbose<CR>
nnoremap <leader>ta :TestSuite --verbose --concurrency 4 --fail-fast<CR>

nnoremap <leader>q :FZF .<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>ps :Rg<SPACE>""<left>
nnoremap <leader>mf :ToggleOnly<CR>

"Functions
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
