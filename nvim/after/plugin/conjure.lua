vim.g.maplocalleader = ","

-- starts repl + comeback to original tab
vim.keymap.set("n", "<leader>repl", [[:Lein<CR><C-\><C-N>gt:ConjureLogVSplit<CR><C-w><C-w>]])

-- closes repl in other tab
vim.keymap.set("n", "<leader>crepl", [[:ConjureLogCloseVisible<CR>gtAexit<CR>]])

-- evaluate whole file
vim.keymap.set("n", "<leader>eb", [[:ConjureEvalBuf<CR>]])

-- repl output
vim.keymap.set("n", "<leader>rv", [[:ConjureLogVSplit<CR>]])
vim.keymap.set("n", "<leader>rc", [[:ConjureLogResetSoft<CR>]])

-- tests
vim.keymap.set("n", "<leader>tn", [[:ConjureLogResetSoft<CR>:ConjureCljRunCurrentNsTests<CR>]])
vim.keymap.set("n", "<leader>ta", [[:ConjureLogResetSoft<CR>:ConjureCljRunCurrentTest<CR>]])

vim.g['conjure#client#clojure#nrepl#test#current_form_names'] = {"deftest", "defflow", "defspec", "describe"}

-- disable auto-repl
vim.g['conjure#client#clojure#nrepl#connection#auto_repl#enabled'] = false
