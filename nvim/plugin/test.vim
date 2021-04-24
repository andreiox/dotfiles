let g:test#javascript#ava#file_pattern = '.*\.test\.[tj]s'

if has('nvim')
    let test#strategy = 'neovim'
    tmap <C-o> <C-\><C-n>
endif
