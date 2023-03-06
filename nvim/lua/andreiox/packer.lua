-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Navigation + fzf
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use({
	  "ellisonleao/gruvbox.nvim",
	  config = function()
		vim.o.background = "dark"
		vim.cmd([[colorscheme gruvbox]])
          end
  })

  -- syntax highlighing
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- best plugin ever
  use('mbbill/undotree')

  -- git
  use('tpope/vim-fugitive')

  -- lsp
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

  use('mhinz/vim-signify')

  use('mrjones2014/nvim-ts-rainbow')

  use('jiangmiao/auto-pairs')

  use('preservim/nerdcommenter')

  -- clojure shit
  use('tpope/vim-dispatch')
  use('clojure-vim/vim-jack-in')
  use('radenling/vim-dispatch-neovim')

  use('Olical/conjure')
end)

