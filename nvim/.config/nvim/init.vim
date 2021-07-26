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
" set spell
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

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
" lsp autocomplete
Plug 'hrsh7th/nvim-compe'
" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Lint
Plug 'dense-analysis/ale'

Plug 'kyazdani42/nvim-web-devicons'

" jsx and tsx hightlight
" Plug 'yuezk/vim-js'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" close tags
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'
set background=dark
colorscheme gruvbox

" Mappings
let mapleader = " "
noremap <leader>w :w<CR>
noremap <leader>gs :Git<CR>
nnoremap <leader>gst <cmd>Telescope git_status<CR>

" ALE
" Fix files with prettier, and then ESLint.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

let g:ale_fix_on_save = 1
let g:ale_disable_lsp = 1

lua require("init")
