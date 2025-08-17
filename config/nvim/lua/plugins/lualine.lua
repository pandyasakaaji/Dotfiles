return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'nord', -- or 'catppuccin'
        component_separators = { left = '', right = ''},
        section_separators   = { left = '', right = ''},
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          { 'mode', icon = '', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = {
          { 'branch', icon = '' },
          { 'diff' },
          { 'diagnostics' },
        },
        lualine_c = {
          { 'filename', path = 1, symbols = { modified = ' ', readonly = ' ' } },
        },
        lualine_x = {
          { 'encoding' },
          { 'fileformat' },
          { 'filetype' },
        },
        lualine_y = {
          { 'progress' },
        },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive', 'nvim-tree', 'quickfix' },
    }
  end,
}

