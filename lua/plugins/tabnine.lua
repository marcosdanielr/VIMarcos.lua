require("tabnine").setup({
	disable_auto_comment = true,
	accept_keymap = "<C-Tab>",
	dismiss_keymap = "<C-]>",
	debounce_ms = 800,
	suggestion_color = { gui = "#808080", cterm = 244 },
	exclude_filetypes = { "TelescopePrompt", "NvimTree" },
	log_file_path = nil,
	ignore_certificate_errors = false,
})
