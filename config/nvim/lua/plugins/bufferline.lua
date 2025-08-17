return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        vim.o.mousemoveevent = true,

        require("bufferline").setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",        -- sidebar filetype
                        text = "File Tree",       -- text to show
                        highlight = "Directory",      -- highlight group for text
                        separator = true              -- add a separator between sidebar & buffers
                    },
                },
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { 'close' },
                },
                indicator = {
                    style = "underline",  -- "icon" | "underline" | "none"
                },
                separator_style = { " ", " " },
                tab_size = 18,
            },
        })
    end,
}
