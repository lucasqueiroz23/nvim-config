-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			pcall(vim.cmd, 'MasonUpdate')
		  end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	  }
}

  -- telescope (find stuff, i.e., files, text, etc)
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorscheme
  use ({ 
	  "navarasu/onedark.nvim",
	  as = 'onedark',
	  config = function()
		  vim.cmd('colorscheme onedark')
	  end
  })

  -- VimBeGood (game for learning motions etc)
  use 'ThePrimeagen/vim-be-good'

  -- treesitter stuff
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/playground'

  -- harpoon -> change between files quickly
  use 'ThePrimeagen/harpoon'

  -- undo tree
  use 'mbbill/undotree'

  -- vim fugitive(manipulate git stuff)
  use 'tpope/vim-fugitive'

  use 'jiangmiao/auto-pairs'


end)
