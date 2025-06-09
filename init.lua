if vim.g.neovide then
	vim.g.neovide_input_macos_option_key_is_meta = "only_left"

	-- styles
	vim.g.neovide_window_blurred = true
	vim.g.neovide_opacity = 0.8
end

require("core.vim")
require("core.globals")
require("core.lazy")
require("plugins")
require("core.keybinds")
require("ui.theme")
require("core.lsp")
