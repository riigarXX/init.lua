vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Themes
	use 'Mofiqul/dracula.nvim'

	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- :MasonUpdate updates registry contents
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use 'rcarriga/nvim-notify'

	use "lukas-reineke/indent-blankline.nvim"

	-- or                            , branch = '0.1.x',
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'm-demare/hlargs.nvim',
		requires = { 'nvim-treesitter/nvim-treesitter' }
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use 'ryanoasis/vim-devicons'
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
			{ 'hrsh7th/cmp-cmdline' },
			{ 'hrsh7th/cmp-vsnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/vim-vsnip' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'rafamadriz/friendly-snippets' },
			{ 'SirVer/ultisnips' },
			{ 'quangnguyen30192/cmp-nvim-ultisnips' },

			{ 'dcampos/nvim-snippy' },
			{ 'dcampos/cmp-snippy' },
			{ 'rafamadriz/friendly-snippets' }
		}
	}
	-- Lua
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}
	if packer_bootstrap then
		require('packer').sync()
	end
end)
