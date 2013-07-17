set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
  Bundle 'tpope/vim-fugitive'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/nerdtree'
  Bundle 'kien/ctrlp.vim'
  Bundle 'flazz/vim-colorschemes'
  Bundle 'tpope/vim-rails'
	Bundle 'mileszs/ack.vim'
	Bundle 'slim-template/vim-slim'
 " vim-scripts repos
" Bundle 'L9'
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 
 " Spacing related settings
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

 " Navigation
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
