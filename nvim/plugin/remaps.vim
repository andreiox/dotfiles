"Plugin independent
noremap Y y$
nnoremap <C-Y> <C-R>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>sp :split<CR>

"Plugin dependent
inoremap <silent><expr> <c-space> coc#refresh()

nmap <F2> <Plug>(coc-rename)
nmap <silent> k :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>dia :<C-u>CocList diagnostics<CR>

nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

nmap <leader>hd :SignifyHunkDiff<CR>
nmap <leader>hu :SignifyHunkUndo<CR>

nmap <leader>mp :InstantMarkdownPreview<CR>
nmap <leader>ms :InstantMarkdownStop<CR>

nmap <leader>tf :TestFile --verbose<CR>
nmap <leader>ta :TestSuite --verbose<CR>

nmap <leader>q :FZF .<CR>
nmap <leader>ps :Rg<SPACE>""<left>
nmap <leader>u :UndotreeToggle<CR>

nmap <space>f :CocCommand explorer --preset simplify<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
