local status = pcall(require, "lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

if not status then
	return
end

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

_G.lsp_capabilities = capabilities

require("lsp.servers.tsserver")
require("lsp.servers.lua_ls")
require("lsp.servers.pyright")
require("lsp.servers.gopls")
require("lsp.servers.rust_analyzer")
require("lsp.servers.astro")
require("lsp.servers.html")
require("lsp.servers.dartls")
require("lsp.servers.phpactor")
require("lsp.servers.intelephense")
