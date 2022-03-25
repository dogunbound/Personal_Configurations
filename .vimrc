call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'maxmellon/vim-jsx-pretty'




" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()

" For ESLint
let g:ale_fixers = {
\	'javascript': ['eslint']
\ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" For rust

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
autocmd BufNewFile,BufRead *.rs set filetype=rust

let g:ale_linters = {
\  'rust': ['analyzer'],
\}

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

" This is for YCM
set encoding=utf-8
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_max_diagnostics_to_display = 0
" This is to disable ycm diagnostics/syntax showing temporarily
let g:ycm_show_diagnostics_ui = 0

" Fix programming structure with default vim options
set nocompatible
syntax on
set number
set ai
set foldmethod=indent
set foldlevel=0
set foldopen=all

syntax enable
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
inoremap {c) {<Esc>o<Esc>i})<Esc>k$a
inoremap {C) {<Esc>o<Esc>i})<Esc>k$a
