local status, nvim_lsp = pcall(require, "lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

if not status then
	return
end

if format_on_save then
	vim.api.nvim_create_autocmd("bufwritepre", {
		pattern = "*",
		callback = function(args)
			require("conform").format({ bufnr = args.buf, async = true, lsp_fallback = true })
		end,
	})
end

nvim_lsp.tsserver.setup({
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
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
})

nvim_lsp.astro.setup({
	init_options = {
		typescript = {
			tsdk = "node_modules/typescript/lib",
		},
	},
})

nvim_lsp.html.setup({
	cmd = { "html-languageserver", "--stdio" },
	filetypes = { "html" },
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = { css = true, javascript = true },
	},
	settings = {},
	single_file_support = true,
	flags = { debounce_text_changes = 500 },
	capabilities = capabilities,
	-- on_attach = custom_attach,
})
