call plug#begin('~/.local/share/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

set termguicolors
set softtabstop=2 tabstop=2 shiftwidth=2 smarttab smartindent expandtab
set colorcolumn=80
set number
set list listchars=trail:.

nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ag / ack
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
end

" fzf
nmap <leader>t :Files<cr>

" nerdtree
map <leader>n :NERDTreeToggle<cr>

