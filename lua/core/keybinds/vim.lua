-- shortcuts
set_key("n", ";", ":", { noremap = true })

-- terminal
set_key("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)

-- window
set_key("n", "<S-A-k>", ":resize -2<CR>", ns)
set_key("n", "<S-A-j>", ":resize +2<CR>", ns)
set_key("n", "<S-A-l>", ":vertical resize -2<CR>", ns)
set_key("n", "<S-A-h>", ":vertical resize +2<CR>", ns)
set_key("n", "<Leader>h", ":split<CR>", ns)
set_key("n", "<Leader>v", ":vsplit<CR>", ns)

set_key("n", "<C-h>", "<C-w>h", ns)
set_key("n", "<C-j>", "<C-w>j", ns)
set_key("n", "<C-k>", "<C-w>k", ns)
set_key("n", "<C-l>", "<C-w>l", ns)

-- buffers
set_key("n", "<C-t>", ":tabnew<CR>", ns)
set_key("n", "<C-s>", ":w<CR>", ns)
set_key("n", "<C-q>", ":q<CR>", ns)
set_key("n", "<S-q>", ":q!<CR>", ns)
set_key("n", "<Leader>c", ":bd<CR>", ns)

-- edit
set_key("n", "<space>`", 'viw<ESC>a"<esc>bi"<esc>ela', ns)
set_key("n", "<space>(", "viw<ESC>a)<esc>bi(<esc>ela", ns)
set_key("n", "<space>[", "viw<ESC>a]<esc>bi[<esc>ela", ns)
set_key("n", "<space>{", "viw<ESC>a}<esc>bi{<esc>ela", ns)
set_key("n", "<space><", "viw<ESC>a><esc>bi<<esc>ela", ns)

set_key("n", "<A-k>", ":m .-2<CR>==", ns)
set_key("n", "<A-j>", ":m .+1<CR>==", ns)

-- zoom
vim.g.neovide_scale_factor = 1.0

vim.keymap.set("n", "<C-=>", function()
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1
end)

vim.keymap.set("n", "<C-->", function()
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor / 1.1
end)

vim.keymap.set("n", "<C-0>", function()
	vim.g.neovide_scale_factor = 1.0
end)
