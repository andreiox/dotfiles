vim.g.mapleader = " "

-- to copy into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- replace selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- u but fowards
vim.keymap.set("n", "<C-Y>", [[<C-R>]])

-- splits
vim.keymap.set("n", "<leader>vs", [[:vsplit<CR>]])
vim.keymap.set("n", "<leader>sp", [[:split<CR>]])
