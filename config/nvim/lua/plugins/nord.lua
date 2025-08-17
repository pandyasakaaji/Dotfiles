return {
  "shaunsingh/nord.nvim",
  priority = 1000, -- make sure it loads before other plugins
  config = function()
    -- Optional settings
    vim.g.nord_contrast = true
    vim.g.nord_borders = true
    vim.g.nord_disable_background = true
    vim.g.nord_italic = true
    vim.g.nord_bold = true

    -- Load colorscheme
    vim.cmd.colorscheme("nord")
  end,
}

