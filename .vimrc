
call plug#begin()
call plug#end()

"This is for YCM
set encoding=utf-8
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" Fix programming structure with default vim options
filetype plugin on
set nocompatible
syntax enable
syntax on
set number
set ai

filetype plugin indent on								" Autoindent
set smartindent
autocmd Bufread,BufWritePre *.sh normal gg=G

set ts=5 sw=5

" More general additions
set mouse=v
set clipboard=unnamedplus
vmap <C-c> "+y

" Mapping
cmap w!! w !sudo tee % > /dev/null

" C++ mappings
inoremap {c {<Esc>o<Esc>i}<Esc>k$a
inoremap {c; {<Esc>o<Esc>i};<Esc>k$a
nnoremap <F8> : !g++ -fsyntax-only %<Enter>
nnoremap <F7>c : w<Esc>: e %:r.cpp<Enter>
nnoremap <F7>h : w<Esc>: e %:r.h<Enter>
