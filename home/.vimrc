set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'mileszs/ack.vim'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'skalnik/vim-vroom'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

filetype plugin indent on     " required!
set softtabstop=2 tabstop=2 shiftwidth=2 smarttab smartindent expandtab

" Text settings
syntax enable
colors badwolf
set number
set nowrap
set colorcolumn=80
set hlsearch
set list listchars=trail:.
"set guifont=Consolas:h21

"Ctrl+p stuff
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_map = '<Leader>t'

" Nerdtree
map <Leader>n :NERDTreeToggle<CR>

" Ack
map <c-F> :Ack<space>

" specs
map <Leader>s :call RunCurrentSpecFile()<CR>

" Navigation
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
