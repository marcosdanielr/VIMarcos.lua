local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

-- shortcuts
set("n", ";", ":", { noremap = true })

-- terminal
set("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)

-- window
set("n", "<A-k>", ":resize -2<CR>", ns)
set("n", "<A-j>", ":resize +2<CR>", ns)
set("n", "<A-h>", ":vertical resize -2<CR>", ns)
set("n", "<A-l", ":vertical resize +2<CR>", ns)
set("n", "<Leader>h", ":split<CR>", ns)
set("n", "<Leader>v", ":vsplit<CR>", ns)

-- buffers
set("n", "<S-l>", ":BufferLineCycleNext<CR>", ns)
set("n", "<S-h>", ":BufferLineCyclePrev<CR>", ns)
set("n", "<C-t>", ":tabnew<CR>", ns)
set("n", "<C-s>", ":w<CR>", ns)
set("n", "<C-q>", ":q<CR>", ns)
set("n", "<S-q>", ":q!<CR>", ns)

-- telescope
set("n", "<C-F>", ":lua require('telescope.builtin').live_grep({grep_open_files=true}) <CR>", ns)
set("n", "<C-A>", ":Telescope live_grep<CR>", ns)
set("n", "<C-P>", ":Telescope find_files<CR>", ns)

-- toggleterm
set("n", "<A-1>", ":ToggleTerm size=10 direction=horizontal<CR>", ns)
set("n", "<A-2>", ":ToggleTerm size=40 direction=vertical<CR>", ns)
set("n", "<A-3>", ":ToggleTerm direction=float<CR>", ns)


-- edit
set("n", "<space>`", 'viw<ESC>a"<esc>bi"<esc>ela', ns)
set("n", "<space>(", "viw<ESC>a)<esc>bi(<esc>ela", ns)
set("n", "<space>[", "viw<ESC>a]<esc>bi[<esc>ela", ns)
set("n", "<space>{", "viw<ESC>a}<esc>bi{<esc>ela", ns)
set("n", "<space><", "viw<ESC>a><esc>bi<<esc>ela", ns)

-- nerdtree
set("n", "<C-n>", ":NERDTreeToggle<CR>", ns)
