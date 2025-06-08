if vim.g.neovide then
	vim.g.neovide_window_blurred = true
	vim.g.neovide_input_macos_option_key_is_meta = "only_left"

	local alpha = function()
		return string.format("%x", math.floor(255 * vim.g.transparency or 0.4))
	end

	vim.g.neovide_opacity = 0.0
	vim.g.transparency = 0.8
	vim.g.neovide_background_color = "#0f1117" .. alpha()

	vim.g.neovide_floating_blur_amount_x = 7.0
	vim.g.neovide_floating_blur_amount_y = 7.0
end

require("core.vim")
require("core.globals")
require("core.lazy")
require("plugins")
require("core.keybinds")
require("ui.theme")
require("core.lsp")
