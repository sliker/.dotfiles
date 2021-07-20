" set termguicolors
set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set nu
set nobackup
set nowritebackup
set noswapfile
set spell
set autoread
set scrolloff=8
set nohlsearch
set nowrap
set expandtab
set colorcolumn=100
set signcolumn=yes
set hidden
set updatetime=300

" set more space for displaying messages
set cmdheight=2

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

call plug#end()

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

colorscheme gruvbox
set background=dark

let mapleader = " "
noremap <leader>w :w<CR>

