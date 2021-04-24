let mapleader=" "

"Remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

"Source other vim files
for f in split(glob('~/.config/nvim/plugin/*.vim'), '\n')
    exe 'source' f
endfor
