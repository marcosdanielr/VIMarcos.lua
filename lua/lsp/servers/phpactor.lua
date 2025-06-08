local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.phpactor.setup({
	cmd = { "phpactor", "language-server" },
	filetypes = { "php" },
	root_dir = nvim_lsp.util.root_pattern("composer.json", ".git"),
	settings = {
		phpactor = {
			completion = {
				enable = true,
				timeout = 2000,
			},
			language_server = {
				enable = true,
			},
		},
	},
	capabilities = capabilities,
	flags = { debounce_text_changes = 100 },
})
