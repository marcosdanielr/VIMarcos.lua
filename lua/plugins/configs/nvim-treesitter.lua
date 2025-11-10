local config = function()
	require("nvim-treesitter.configs").setup({
		auto_install = true,
		ensure_installed = {
			"javascript",
			"typescript",
			"tsx",
			"html",
			"css",
			"astro",
			"vue",
			"lua",
			"go",
			"php",
			"blade",
		},
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
		autotag = {
			enable = true,
			enable_rename = true,
			enable_close = true,
			enable_close_on_slash = true,
		},
	})

	require("nvim-treesitter.parsers").get_parser_configs().blade = {
		install_info = {
			url = "https://github.com/EmranMR/tree-sitter-blade",
			files = { "src/parser.c" },
			branch = "main",
		},
		filetype = "blade",
	}

	vim.filetype.add({
		extension = {
			blade = "blade",
		},
	})
end

return config
