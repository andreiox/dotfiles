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
vim.keymap.set("n", "<leader>ta", [[:ConjureCljRunCurrentTest<CR>]])

vim.g['conjure#client#clojure#nrepl#test#current_form_names'] = {"deftest", "defflow", "defspec", "describe"}

-- disable auto-repl
vim.g['conjure#client#clojure#nrepl#connection#auto_repl#enabled'] = false
