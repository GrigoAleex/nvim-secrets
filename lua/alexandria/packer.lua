vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use({ 
	  "tiagovla/tokyodark.nvim",
	  config = function () 
		  vim.cmd.colorscheme('tokyodark')
			vim.api.nvim_set_hl(0, 'Normal', { blend = 0 })
		  vim.api.nvim_set_hl(0, 'Terminal', { blend = 0 })
		  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
	  end
  })

  use({
	'nvim-treesitter/nvim-treesitter',
	{ run = ':TSUpdate' }
  })

  use 'mbbill/undotree'

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use 'voldikss/vim-floaterm'
end)
