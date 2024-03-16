local plugins = {
    { "nvim-tree/nvim-web-devicons" },
    { "styled-components/vim-styled-components" },
    { "jparise/vim-graphql" },
    { "ellisonleao/gruvbox.nvim" },
    { "marcosdanielr/search-and-replace.nvim" },
    { "navarasu/onedark.nvim" },
    { "roobert/tailwindcss-colorizer-cmp.nvim" },
    { "norcalli/nvim-colorizer.lua" },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons"
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = require 'plugins.configs.conform'
    },
    {
        "mfussenegger/nvim-lint",
        event = {
            "BufReadPre",
            "BufNewFile",
        },
        config = require 'plugins.configs.nvim-lint'
    },
}

return plugins