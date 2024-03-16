local plugins = require 'plugins'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins)
require("search-and-replace").setup()
require("colorizer").setup()
require("Comment").setup()
require("bufferline").setup()
require("lualine").setup {
    options = {
        theme = "nighfly"
    },
}
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
    automatic_installation = true,
}
