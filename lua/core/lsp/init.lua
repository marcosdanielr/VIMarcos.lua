local status, nvim_lsp = pcall(require, "lspconfig")

if not status then
	return
end

require("core.lsp.lua-ls")
require("core.lsp.ts-server")
