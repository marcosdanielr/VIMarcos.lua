local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},
			procMacro = {
				enable = true,
			},
			diagnostics = {
				enable = true,
				disabled = { "unresolved-proc-macro" },
			},
			checkOnSave = {
				command = "clippy",
			},
		},
	},
	capabilities = capabilities,
})
