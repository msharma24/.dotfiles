local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- plugins  start here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins

	-- Syntax helpers
	use("fatih/vim-go")
	use("nvim-treesitter/nvim-treesitter")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- File explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	-- IAC and Config Mgmt Plugins
	use("hashivim/vim-terraform")

	-- Colorschemes
  use 'shaeinst/roshnivim-cs'
	use("lunarvim/darkplus.nvim")
	use("sainnhe/sonokai")
	use("kyazdani42/nvim-web-devicons")
	use({ "ellisonleao/gruvbox.nvim" })

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Git
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({})
		end,
	})

	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	})

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer
	use("jose-elias-alvarez/null-ls.nvim") -- formatters and linters

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use
  -- rg
  use "lukas-reineke/cmp-rg"
	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use({ "kevinhwang91/nvim-hlslens" })

	-- Better escaping
	use({
		"max397574/better-escape.nvim",
		event = { "InsertEnter" },
		config = function()
			require("better_escape").setup({
				mapping = { "ii", "jj", "jk", "kj" },
				timeout = vim.o.timeoutlen,
				keys = "<ESC>",
			})
		end,
	})
	-- Better Scroll
	use({
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({
				mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
			})
		end,
	})

	-- Boost startup time
	use({
		"nathom/filetype.nvim",
		config = function()
			vim.g.did_load_filetypes = 1
		end,
	})

	-- Cursorhold fix
	use({
		"antoinemadec/FixCursorHold.nvim",
		event = "BufRead",
		config = function()
			vim.g.cursorhold_updatetime = 100
		end,
	})

	-- Optimiser
	use({
		"lewis6991/impatient.nvim",
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- plugins end here
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
