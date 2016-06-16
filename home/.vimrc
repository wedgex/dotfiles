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
Plugin 'zsoltf/vim-maui'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'mileszs/ack.vim'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'skalnik/vim-vroom'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'fatih/vim-go'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on     " required!
set softtabstop=2 tabstop=2 shiftwidth=2 smarttab smartindent expandtab

 " Text settings
 syntax enable
 colorscheme maui
 set number
 set nowrap
 set colorcolumn=80
 set hlsearch
 set list listchars=trail:.
 set noswapfile

"Ctrl+p stuff
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_map = '<Leader>t'

"The Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
end

" Nerdtree
map <Leader>n :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_ruby_rubocop_exec = "chruby-exec -- rubocop"
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_ruby_exec = "chruby-exec "
let g:syntastic_ruby_checkers          = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_args = '-c ~/.rubocop.yml'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Navigation
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
