local nvimtree = require('nvim-tree')

nvimtree.setup({
  view = {},
  renderer = {
    add_trailing = true,
    group_empty = true,
  },
  update_focused_file = {
    enable = true,
  },
  filters = {
    custom = { "^.git$" },
  },
  actions = {
    open_file = {
      resize_window = false,
    },
  },
})

vim.keymap.set("n", "<leader>f", [[:NvimTreeToggle<CR>]])
