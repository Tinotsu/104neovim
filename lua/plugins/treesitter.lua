return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "go", "lua", "javascript", "python" },
            highlight = { enable = true },
            indent = { enable = true },
        }
    end,
}

