vim.g.mapleader = ' '

require 'keybinds.nvim-tree'

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

-- buffers
set_key("n", "<S-l>", ":BufferLineCycleNext<CR>", ns)
set_key("n", "<S-h>", ":BufferLineCyclePrev<CR>", ns)
set_key("n", "<C-t>", ":tabnew<CR>", ns)
set_key("n", "<C-s>", ":w<CR>", ns)
set_key("n", "<C-q>", ":q<CR>", ns)
set_key("n", "<S-q>", ":q!<CR>", ns)

-- telescope
set_key("n", "<C-F>", ":lua require('telescope.builtin').live_grep({grep_open_files=true}) <CR>", ns)
set_key("n", "<C-A>", ":Telescope live_grep<CR>", ns)
set_key("n", "<C-P>", ":Telescope find_files<CR>", ns)

-- toggleterm
set_key("n", "<A-1>", ":ToggleTerm size=10 direction=horizontal<CR>", ns)
set_key("n", "<A-2>", ":ToggleTerm size=40 direction=vertical<CR>", ns)
set_key("n", "<A-3>", ":ToggleTerm direction=float<CR>", ns)


-- edit
set_key("n", "<space>`", 'viw<ESC>a"<esc>bi"<esc>ela', ns)
set_key("n", "<space>(", "viw<ESC>a)<esc>bi(<esc>ela", ns)
set_key("n", "<space>[", "viw<ESC>a]<esc>bi[<esc>ela", ns)
set_key("n", "<space>{", "viw<ESC>a}<esc>bi{<esc>ela", ns)
set_key("n", "<space><", "viw<ESC>a><esc>bi<<esc>ela", ns)

-- nerdtree
set_key("n", "<C-n>", ":NERDTreeToggle<CR>", ns)
