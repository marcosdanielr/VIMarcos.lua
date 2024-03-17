require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"svelte",
		"lua_ls",
		"gopls",
		"graphql",
		"emmet_ls",
		"prismals",
		"pyright",
		"eslint",
	},
	automatic_installation = true,
})
