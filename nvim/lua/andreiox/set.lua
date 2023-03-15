vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- other
vim.opt.wrap = false
vim.opt.updatetime = 50
vim.opt.inccommand = "split"
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.mouse = nil

vim.opt.clipboard = "unnamedplus"
