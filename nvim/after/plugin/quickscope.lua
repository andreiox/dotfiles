vim.g['qs_enable'] = 1
vim.g['qs_max_chars'] = 150

vim.cmd[[
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
augroup END
]]
