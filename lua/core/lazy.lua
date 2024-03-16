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
require('mason').setup({
    eslintFixOnSave = true,
    eslintFixDiagnostics = true
})
require("mason-lspconfig").setup {
    ensure_installed = { 
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "eslint"
    },
    automatic_installation = true,
}
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "eslint_d", "eslint" } },
  },
})
