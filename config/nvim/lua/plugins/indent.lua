return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        -- set a soft color for scope highlight (matches Nord theme vibes)
        vim.api.nvim_set_hl(0, "IblScope", { fg = "#88C0D0" }) -- pick your fav color

        require("ibl").setup({
            indent = { char = "│" },
            scope = { enabled = true, highlight = { "IblScope" } },
        })
    end,
}

