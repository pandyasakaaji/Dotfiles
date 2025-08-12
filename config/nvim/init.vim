" ==============================
" Neovim Minimal Config
" ==============================

" ----- Visual Settings -----
set termguicolors                    " Enable true colors
set background=dark                  " Match dark terminal themes
highlight Normal guibg=NONE ctermbg=NONE " Transparent background

" ----- Line Numbers -----
set number                           " Absolute line numbers
set relativenumber                   " Relative line numbers for easy movement

" ----- UI & Navigation -----
set cursorline                       " Highlight current line
set showmatch                        " Highlight matching brackets
set scrolloff=5                      " Keep 5 lines visible above/below cursor

" ----- Indentation -----
set tabstop=4                        " Tabs are 4 spaces
set shiftwidth=4                     " Indent is 4 spaces
set expandtab                        " Use spaces instead of tabs
set smartindent                      " Auto-indent new lines

" ----- Search -----
set ignorecase                       " Case-insensitive search...
set smartcase                        " ...unless uppercase letters are used
set hlsearch                         " Highlight search matches
set incsearch                        " Show matches as you type

" ----- Editing -----
set wrap                             " Wrap long lines
set clipboard=unnamedplus            " Use system clipboard
set mouse=a                          " Enable mouse support

" ----- Syntax Highlighting -----
syntax enable
syntax on

set clipboard=unnamedplus
