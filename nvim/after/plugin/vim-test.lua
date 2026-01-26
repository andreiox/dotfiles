vim.g['test#javascript#nodetest#file_pattern'] = '.*.test.[tj]s'
vim.g['test#javascript#nodetest#executable'] = 'NODE_ENV=test node --test -r ts-node/register'
vim.g['test#neovim#start_normal'] = 1
vim.g['test#strategy'] = 'neovim'

vim.keymap.set("n", "<leader>tf", [[:TestFile<CR>]])
vim.keymap.set("n", "<leader>tt", [[:TestNearest<CR>]])
