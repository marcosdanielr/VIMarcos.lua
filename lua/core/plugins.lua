local plugins = {
	{ "nvim-tree/nvim-web-devicons" },
	{ "styled-components/vim-styled-components" },
	{ "jparise/vim-graphql" },
	{ "ellisonleao/gruvbox.nvim" },
	{ "marcosdanielr/search-and-replace.nvim" },
	{ "navarasu/onedark.nvim" },
	{ "roobert/tailwindcss-colorizer-cmp.nvim" },
	{ "norcalli/nvim-colorizer.lua" },
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {},
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			formatters_by_ft = {
				python = { "ruff_format" },
				vue = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 2500,
				lsp_fallback = true,
			},
		},
		config = require("plugins.configs.conform"),
	},
	{
		"mfussenegger/nvim-lint",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = require("plugins.configs.nvim-lint"),
	},

	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ignore_install = { "astro" },
				ensure_installed = { "javascript", "typescript", "tsx", "html", "css", "astro" },
				highlight = {
					enable = true,
					disable = { "astro" },
				},
				textsubjects = {
					enable = true,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},

	{
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{ "codota/tabnine-nvim", build = "./dl_binaries.sh" },

	-- Autocompletion
	{ "hrsh7th/nvim-cmp" }, -- Required
	{ "hrsh7th/cmp-nvim-lsp" }, -- Required
	{ "L3MON4D3/LuaSnip" }, -- Required
	{ "rafamadriz/friendly-snippets" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "saadparwaiz1/cmp_luasnip" },

	{
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = true,
	},
}

return plugins
