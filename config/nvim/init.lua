-- ==============================
-- Neovim Minimal Config (Lua)
-- ==============================

-- ----- Visual Settings -----
vim.opt.termguicolors = true                  -- Enable true colors
vim.opt.background = "dark"                   -- Match dark terminal themes
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE") -- Transparent background

-- ----- Line Numbers -----
vim.opt.number = true                         -- Absolute line numbers
vim.opt.relativenumber = true                 -- Relative line numbers

-- ----- UI & Navigation -----
vim.opt.cursorline = true                     -- Highlight current line
vim.opt.showmatch = true                      -- Highlight matching brackets
vim.opt.scrolloff = 5                         -- Keep 5 lines visible above/below cursor

-- ----- Indentation -----
vim.opt.tabstop = 4                           -- Tabs are 4 spaces
vim.opt.shiftwidth = 4                        -- Indent is 4 spaces
vim.opt.expandtab = true                      -- Use spaces instead of tabs
vim.opt.smartindent = true                    -- Auto-indent new lines

-- ----- Search -----
vim.opt.ignorecase = true                     -- Case-insensitive search
vim.opt.smartcase = true                      -- ...unless uppercase letters are used
vim.opt.hlsearch = true                       -- Highlight search matches
vim.opt.incsearch = true                      -- Show matches as you type

-- ----- Editing -----
vim.opt.wrap = true                           -- Wrap long lines
vim.opt.clipboard = "unnamedplus"             -- Use system clipboard
vim.opt.mouse = "a"                            -- Enable mouse support

-- ----- Syntax Highlighting -----
vim.cmd("syntax enable")
vim.cmd("syntax on")

-- ----- Lazynvim -----
require("config.lazy")
