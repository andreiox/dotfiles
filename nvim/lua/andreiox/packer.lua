-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Navigation + fzf
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

  -- Theme
  use('ellisonleao/gruvbox.nvim')

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use('arkav/lualine-lsp-progress')

  -- syntax highlighing
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- best plugin ever
  use('mbbill/undotree')

  -- git
  use('tpope/vim-fugitive')
  use('tpope/vim-rhubarb')

  -- lsp
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required

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

  use('hiphish/rainbow-delimiters.nvim')

  use('jiangmiao/auto-pairs')

  use('preservim/nerdcommenter')

  use('vim-test/vim-test')

  -- boosts f movement
  -- hack to make quick-scope work
  vim.g['qs_highlight_on_keys'] = {'f', 'F'}
  use ('unblevable/quick-scope')

  -- clojure shit
  use('tpope/vim-dispatch')
  use('clojure-vim/vim-jack-in')
  use('radenling/vim-dispatch-neovim')

  use('Olical/conjure')

  -- copilot shit
  use('github/copilot.vim')

  -- todo highlight
  use {'folke/todo-comments.nvim', requires = {{'nvim-lua/plenary.nvim'}}}

  use {
    "editor-code-assistant/eca-nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    }
}

end)
