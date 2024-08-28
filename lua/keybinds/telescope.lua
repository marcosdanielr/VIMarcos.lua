set_key("n", "<Leader>f", ":lua require('telescope.builtin').live_grep({grep_open_files=true}) <CR>", ns)
set_key("n", "<Leader>a", ":Telescope live_grep<CR>", ns)
set_key("n", "<Leader>p", ":Telescope find_files<CR>", ns)
set_key("n", "<Leader>gs", ":Telescope git_status<CR>", ns)
