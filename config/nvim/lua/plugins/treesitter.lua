local M = {
"nvim-treesitter/nvim-treesitter",
    ensure_installed = { "html", "css", "javascript", "typescript", "vim", "lua", "json", "gitcommit" },
    highlight = { enable = true },
    indent = { enable = true },
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

return { M }
