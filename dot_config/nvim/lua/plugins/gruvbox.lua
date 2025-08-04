return {{
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        vim.o.background = "light"
        require("gruvbox").setup({
            terminal_colors = true,
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = true,
                comments = true,
                operators = false,
                folds = true
            },
            contrast = "hard", -- puede ser: "hard", "soft", ""
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false
        })
        vim.cmd("colorscheme gruvbox")
    end
}}
