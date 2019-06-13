set nocompatible
filetype on
syntax on
set number
set ruler
set laststatus=2
set hlsearch
let g:highlighting = 0

" Tabs and indents:

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set completeopt=menu
set conceallevel=0
set relativenumber
set lazyredraw
set ttyfast

filetype plugin on
set omnifunc=syntaxcomplete#Complete

colorscheme slate

nnoremap <C-p> :FuzzyOpen<CR>
nmap <F11> <Plug>(ale_fix)

let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
call plug#end()
