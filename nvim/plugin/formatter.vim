"Remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

"Format on save
autocmd BufWritePost *.ts,*.js,*.json,*.xml,*.md FormatWrite

lua << EOF
require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    typescript = {
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    json = {
       function()
          return {
            exe = "python",
            args = {"-mjson.tool", vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    xml = {
       function()
          return {
            exe = "xmllint",
            args = {"--format", "-"},
            stdin = true
          }
        end
    },
    markdown = {
       function()
          return {
            exe = "markdownfmt",
            args = {"-w", vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
  }
})
EOF
