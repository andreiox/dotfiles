local todo = require('todo-comments')

todo.setup()

vim.keymap.set("n", "<leader>td", [[:TodoQuickFix<CR>]])
