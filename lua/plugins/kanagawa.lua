return {

    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,  -- makes sure the theme loads early
    config = function()
        require("kanagawa").setup({
            -- optional settings, you can tweak or remove
            undercurl = true,
            commentStyle = { italic = true },
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            transparent = false,
            dimInactive = false,
            terminalColors = true,  -- use Kanagawa's palette for :terminal
            theme = "dragon",  -- options: "wave" (default), "dragon", "lotus"
            background = {  -- map vim.o.background to a Kanagawa theme
                dark = "dragon",
                light = "lotus",
            },
        })

        -- apply the colorscheme
        vim.cmd("colorscheme kanagawa")
    end,
    build = ":KanagawaCompile",  -- compile theme for faster startup (optional)

}
