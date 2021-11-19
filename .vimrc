call plug#begin('~/.vim/plugged')
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" For ESLint
let g:ale_fixers = {
\	'javascript': ['eslint']
\ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" This is for YCM
set encoding=utf-8
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_max_diagnostics_to_display = 0
" This is to disable ycm diagnostics/syntax showing temporarily
let g:ycm_show_diagnostics_ui = 0

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

set completeopt-=preview

set expandtab shiftwidth=2 softtabstop=2 tabstop=4
set ts=2 sw=2

" More general additions
set mouse=v
set clipboard=unnamedplus
vmap <C-c> "+y
set pastetoggle=<F2>

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Mapping
cmap w!! w !sudo tee % > /dev/null

" C++ mappings
inoremap {c {<Esc>o<Esc>i}<Esc>k$a
inoremap {C {<Esc>o<Esc>i}<Esc>k$a
inoremap {c; {<Esc>o<Esc>i};<Esc>k$a
inoremap {C; {<Esc>o<Esc>i};<Esc>k$a
nnoremap <F8> : !g++ -fsyntax-only %<Enter>
nnoremap <F7>c : w<Esc>: e %:r.cpp<Enter>
nnoremap <F7>h : w<Esc>: e %:r.h<Enter>

" Javascript mappings
inoremap {c); {<Esc>o<Esc>i});<Esc>k$a
inoremap {C); {<Esc>o<Esc>i});<Esc>k$a
