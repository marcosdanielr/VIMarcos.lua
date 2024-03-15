require "keybinds.nvim-tree"
require "keybinds.toggleterm"
require "keybinds.telescope"
require "keybinds.bufferline"

-- shortcuts
set_key("n", ";", ":", { noremap = true })

-- terminal
set_key("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)

-- window
set_key("n", "<A-k>", ":resize -2<CR>", ns)
set_key("n", "<A-j>", ":resize +2<CR>", ns)
set_key("n", "<A-h>", ":vertical resize -2<CR>", ns)
set_key("n", "<A-l", ":vertical resize +2<CR>", ns)
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
