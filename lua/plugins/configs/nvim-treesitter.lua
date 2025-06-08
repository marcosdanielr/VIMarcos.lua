local config = function()
	require("nvim-treesitter.configs").setup({
		auto_install = true,
		ignore_install = { "astro" },
		ensure_installed = { "javascript", "typescript", "tsx", "html", "css", "astro", "vue" },
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
end

return config
