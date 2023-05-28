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

" fish syntax
Plug 'https://github.com/nickeb96/fish.vim'

call plug#end()

" colorscheme
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let g:airline_theme="ayu_dark"
