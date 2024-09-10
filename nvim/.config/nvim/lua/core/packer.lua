local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

-- Visual Tweaks
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'bluz71/vim-nightfly-colors'
	use 'folke/zen-mode.nvim'
	use 'numToStr/FTerm.nvim'
	--top bar
		use {
			"SmiteshP/nvim-navic",
			requires = "neovim/nvim-lspconfig"
		}
		use 'LunarVim/breadcrumbs.nvim'
	--themes
		use 'ellisonleao/gruvbox.nvim'
		use 'folke/tokyonight.nvim'

-- navigation plugins
	use 'nvim-tree/nvim-tree.lua' --TODO: change to luatree?
	use 'nvim-treesitter/nvim-treesitter'
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}
	use 'preservim/tagbar'
	use {"folke/todo-comments.nvim",
  		requires = { "nvim-lua/plenary.nvim" },
		config = function() require('todo-comments').setup() end,
  	}

-- LSPs
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}

-- Completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'
	use 'm4xshen/autoclose.nvim'

-- Testing/debugging
	use 'vim-test/vim-test'
	use 'nvim-neotest/nvim-nio'
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'folke/trouble.nvim'

-- Git
	--use 'lewis6991/gitsigns.nvim'
	use 'tpope/vim-fugitive'

-- Rust
	use 'simrat39/rust-tools.nvim'

-- Session management
	use 'rmagatti/auto-session'

-- LaTeX
	use 'lervag/vimtex'
	--use 'jakewvincent/texmagic.nvim'

-- Natural Language stuff
	use {
  		'rafi/telescope-thesaurus.nvim',
		requires = { 'nvim-telescope/telescope.nvim' }
	}
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
	  require('packer').sync()
	end
end)
