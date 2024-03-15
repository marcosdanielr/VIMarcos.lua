set_key("n", "<C-F>", ":lua require('telescope.builtin').live_grep({grep_open_files=true}) <CR>", ns)
set_key("n", "<C-A>", ":Telescope live_grep<CR>", ns)
set_key("n", "<C-P>", ":Telescope find_files<CR>", ns)
