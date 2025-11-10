local nvim_lsp = require("lspconfig")

local capabilities = _G.lsp_capabilities or vim.lsp.protocol.make_client_capabilities()

nvim_lsp.dartls.setup({
	-- cmd = { "dart", "language-server", "--protocol=lsp" },
	cmd = { "flutter", "analysis-server", "--lsp" },
	filetypes = { "dart" },
	root_dir = nvim_lsp.util.root_pattern("pubspec.yaml"),
	init_options = {
		onlyAnalyzeProjectsWithOpenFiles = true,
		suggestFromUnimportedLibraries = true,
	},
	capabilities = capabilities,
})
