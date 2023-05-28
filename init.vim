syntax on
filetype plugin indent on

" disable mouse (terrible)
set mouse=

" show line numbers
set number

" encoding
set encoding=utf8

" disable backup files
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs
set expandtab

" tab size
set smarttab
set shiftwidth=4
set tabstop=4

" indent
set autoindent
set smartindent

" wrap lines
set wrap

" store more history
set history=1000

call plug#begin(stdpath('data') . 'plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorschemes
Plug 'ayu-theme/ayu-vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" colorscheme
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let g:airline_theme="ayu_dark"

" treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "rust",
      "tsx",
      "typescript",
      "fish",
      "toml",
      "json",
      "html",
      "css",
      "python",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
