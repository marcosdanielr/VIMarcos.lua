local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.html.setup({
	cmd = { "html-languageserver", "--stdio" },
	filetypes = { "html" },
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = { css = true, javascript = true },
	},
	settings = {},
	single_file_support = true,
	flags = { debounce_text_changes = 100 },
	capabilities = capabilities,
	-- on_attach = custom_attach,
})
