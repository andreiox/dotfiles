local lsp = require("lsp-zero")

lsp.preset("recommended")

vim.lsp.config("clojure_lsp", {})
vim.lsp.enable({"clojure_lsp"})

vim.lsp.config("jsonls", {})
vim.lsp.enable({"jsonls"})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  end,
})

lsp.set_server_config({
  before_init = function(params)
    params.workDoneToken = "enable-progress"
  end,
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

vim.api.nvim_create_autocmd("BufWritePre", { pattern = { "*.clj", "*.cljs", "*.js", "*.ts", "*.json" }, command = "lua vim.lsp.buf.format({ async = false })"})
vim.api.nvim_create_autocmd("BufWritePre", { pattern = { "*" }, command = [[%s/\s\+$//e]] })
