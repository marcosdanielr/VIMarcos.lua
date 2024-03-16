local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.termguicolors = true
g.mapleader = ' '

-- general
opt.mouse = 'c'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.conceallevel = 0
-- opt.colorcolumn = '80'
--opt.cursorline = true
opt.clipboard = "unnamedplus"
opt.relativenumber = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true
opt.shortmess:append { c = true }
--opt.wichwrap:append {
--	['<'] = true,
--	['>'] = true,
--	[','] = true, h = true,
--	l = true
--}

-- terminal
-- cmd [[command! Term :botright split term://$SHELL]]
-- cmd [[
--   autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
--   autocmd BufLeave term://* stopinsert
-- ]]
--
-- -- others
-- cmd [[
--   autocmd FileType css setl iskeyword+=-
--   autocmd FileType scss setl iskeyword+=-@-@
--
--   autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions -=o
-- ]]
