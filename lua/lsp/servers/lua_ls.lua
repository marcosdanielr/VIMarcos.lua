local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.lua_ls.setup({
	settings = {
		lua = {
			format = {
				enable = true,
				defaultconfig = {
					indent_style = "space",
					indent_size = "2",
				},
			},
		},
	},
	flags = { debounce_text_changes = 100 },
	capabilities = capabilities,
})
