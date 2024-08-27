local status, nvim_lsp = pcall(require, "lspconfig")

if not status then
	return
end

if format_on_save then
	vim.api.nvim_create_autocmd("bufwritepre", {
		pattern = "*",
		callback = function(args)
			require("conform").format({ bufnr = args.buf })
		end,
	})
end

nvim_lsp.tsserver.setup({
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
})


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
})

nvim_lsp.pyright.setup({
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
})

nvim_lsp.gopls.setup({
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		completeunimported = true,
	},
})
