local gruvbox = require('gruvbox')

gruvbox.setup({
  contrast = "hard",
  palette_overrides = {dark0_hard = "#0E1018"},
  italic = {
     strings = false,
     operators = false,
     comments = true
  },
  bold = true,
  overrides = {
    Comment = {fg = "#81878f", italic = true},
    -- new git colors
    DiffAdd = { bold = true, reverse = false, fg = "", bg = "#2a4333"},
    DiffChange = { bold = true, reverse = false, fg = "", bg = "#333841" },
    DiffDelete = { bold = true, reverse = false, fg = "#442d30", bg = "#442d30" },
    DiffText = { bold = true, reverse = false, fg = "", bg = "#213352" },
    -- clojure namespace color
    ['@namespace.clojure'] = { link = 'GruvboxYellow' },
  }
})

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
