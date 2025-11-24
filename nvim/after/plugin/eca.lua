local eca = require('eca')

eca.setup({
  behaviour = {
    -- Start server automatically
    show_status_updates = false,
    auto_start_server = false,
    auto_focus_sidebar = false,
  },
})

vim.keymap.set("n", "<leader>ec", [[:EcaChat<CR>]])
vim.keymap.set("n", "<leader>ef", [[:EcaFocus<CR>]])
vim.keymap.set("n", "<leader>et", [[:EcaToggle<CR>]])
vim.keymap.set("n", "<leader>ea", [[:EcaAddFile<CR>]])
vim.keymap.set("v", "<leader>es", [[:EcaAddSelection<CR>:EcaFocus<CR>]])
