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

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" jsx and tsx hightlight
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" autoclose
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

let mapleader = " "
noremap <leader>w :w<CR>


lua require("init")

" lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent>K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
