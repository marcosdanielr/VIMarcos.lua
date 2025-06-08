local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.gopls.setup({
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		completeunimported = true,
	},
	capabilities = capabilities,
})
