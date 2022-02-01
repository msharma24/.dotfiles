" Settings "{{{
" ---------------------------------------------------------------------
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
set path+=**
set shortmess+=c
set termguicolors
set encoding=UTF-8
set wildmode=longest,list,full
set wildmenu
set autoindent
set ttyfast
set cursorline
set backspace=indent,eol,start
set ruler
set splitright
set splitbelow
set guicursor=
set nu
set relativenumber
set expandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
set scrolloff=8
set colorcolumn=80
set cmdheight=2
set updatetime=300
set clipboard+=unnamedplus
set title
set mouse=a
set history=1000
set background=dark

filetype plugin indent on
highlight Normal guibg=dark

let g:mapleader = " " "Space
let loaded_matchparen = 1

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plugins.vim
runtime ./editor-config.vim
runtime ./colors.vim
runtime ./treesitter.vim
runtime ./maps.vim

"}}}

" vim: set foldmethod=marker foldlevel=0:
