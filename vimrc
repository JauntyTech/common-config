" Requires Pathogen (Vim package manager):
"   https://github.com/tpope/vim-pathogen
execute pathogen#infect()

filetype plugin indent on
syntax on

" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with `>`, use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

set relativenumber
set number

set ruler

imap jj <Esc>

let g:vim_markdown_folding_style_pythonic = 1

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
