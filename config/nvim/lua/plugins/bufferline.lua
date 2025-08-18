return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        -- ----- Keymaps -----
        vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
        vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
        vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
        vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
        -- Use Ctrl + , for previous buffer
        vim.keymap.set("n", "<C-,>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
        -- Use Ctrl + . for next buffer
        vim.keymap.set("n", "<C-.>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
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
                indicator = {
                    style = "underline",  -- "icon" | "underline" | "none"
                },
                separator_style = { " ", " " },
                tab_size = 18,
            },
        })
    end,
}
