local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.astro.setup({
	init_options = {
		typescript = {
			tsdk = "node_modules/typescript/lib",
		},
	},
	capabilities = capabilities,
})
