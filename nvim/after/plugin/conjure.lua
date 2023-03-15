vim.g.maplocalleader = ","

-- starts repl + comeback to original tab
vim.keymap.set("n", "<leader>repl", [[:Lein<CR><C-\><C-N>gt]])

-- evaluate whole file
vim.keymap.set("n", "<leader>eb", [[:ConjureEvalBuf<CR>]])

-- repl output
vim.keymap.set("n", "<leader>rv", [[:ConjureLogVSplit<CR>]])
vim.keymap.set("n", "<leader>rc", [[:ConjureLogResetSoft<CR>]])

-- tests
vim.keymap.set("n", "<leader>tn", [[:ConjureCljRunCurrentNsTests<CR>]])
