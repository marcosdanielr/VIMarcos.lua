local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.pyright.setup({
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	capabilities = capabilities,
})
