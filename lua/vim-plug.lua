local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'ellisonleao/gruvbox.nvim'
Plug 'NvChad/nvim-colorizer.lua'
Plug 'nvim-lualine/lualine.nvim'
--Plug 'kyazdani42/nvim-web-devicons'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
--Plug 'ryanoasis/vim-devicons'
Plug('akinsho/toggleterm.nvim', {tag = '*'})
Plug 'preservim/nerdtree'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug "terrortylor/nvim-comment"

vim.call('plug#end')
