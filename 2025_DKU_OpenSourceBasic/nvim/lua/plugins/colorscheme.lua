return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        vim.o.background = "dark"
        vim.cmd([[colorscheme gruvbox]])
    end,
}

-- return {
--     "folke/tokyonight.nvim",
--     priority = 1000,
--     lazy = false,
--     config = function()
--         vim.o.background = "light"
--         vim.cmd([[colorscheme tokyonight]])
--     end,
-- }
