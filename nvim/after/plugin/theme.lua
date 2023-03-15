local gruvbox = require('gruvbox')

gruvbox.setup({
  italic = false,
  bold = false
})

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
