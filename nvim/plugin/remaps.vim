"Plugin independent
noremap Y y$
nnoremap <C-Y> <C-R>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>sp :split<CR>

"Plugin dependent
inoremap <silent><expr> <c-space> compe#complete()
nnoremap <F2> :lua vim.lsp.buf.rename()<CR>
nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>k :lua vim.lsp.buf.hover()<CR>
nnoremap <silent><c-n> :lua vim.lsp.diagnostic.goto_next()<CR>

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

nnoremap <leader>f :NvimTreeToggle<CR>

nmap <leader>eb <localleader>eb
nmap <leader>ee <localleader>ee
nmap <leader>er <localleader>er
nmap <leader>ls <localleader>ls
nmap <leader>lv <localleader>lv
nmap <leader>lR <localleader>lR
nmap <leader>ei :Clj<CR>
