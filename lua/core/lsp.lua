local status = pcall(require, "lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

if not status then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

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
