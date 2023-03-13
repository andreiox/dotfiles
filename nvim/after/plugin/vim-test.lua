vim.g['test#javascript#ava#file_pattern'] = '.*.test.[tj]s'
vim.g['test#neovim#start_normal'] = 1
vim.g['test#strategy'] = 'neovim'

vim.keymap.set("n", "<leader>tf", [[:TestFile<CR>]])
vim.keymap.set("n", "<leader>tt", [[:TestNearest<CR>]])
