local plugins = {
    { "nvim-tree/nvim-web-devicons" },
    { "styled-components/vim-styled-components" },
    { "jparise/vim-graphql" },
    { "ellisonleao/gruvbox.nvim" },
    { "marcosdanielr/search-and-replace.nvim" },
    { "navarasu/onedark.nvim" },
    { "roobert/tailwindcss-colorizer-cmp.nvim" },
    { "norcalli/nvim-colorizer.lua" },
    { "akinsho/toggleterm.nvim",                version = "*", config = true },
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
    }
}

return plugins
