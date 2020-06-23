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
    Plug 'gruvbox-community/gruvbox'
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
    Plug 'unblevable/quick-scope'
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()

"Coc extensions
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-pairs', 'coc-python', 'coc-prettier']

"Theme
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'

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

"Quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=150

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline

"vim-instant-markdown
let g:instant_markdown_port = 8888
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "chromium"

"FZF
let $FZF_DEFAULT_COMMAND =  "find . -path ./.git -prune -o -path ./node_modules -prune -o -path ./dist -prune -o -path ./.vscode -prune -o -path ./.ebextensions -prune -o -path ./.nyc_output -prune -o -print"
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

if executable('rg')
    let g:rg_derive_root='true'
endif

"Remaps
inoremap <silent><expr> <c-space> coc#refresh()

nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>dia :<C-u>CocList diagnostics<CR>

nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

nmap <leader>mp :InstantMarkdownPreview<CR>
nmap <leader>ms :InstantMarkdownStop<CR>

nmap <leader>tf :TestFile --verbose<CR>
nmap <leader>ta :TestSuite --verbose --concurrency 4 --fail-fast<CR>

nmap <leader>q :FZF .<CR>
nmap <leader>ps :Rg<SPACE>""<left>
nmap <leader>u :UndotreeToggle<CR>

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
