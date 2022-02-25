call plug#begin('~/.local/share/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ayu-theme/ayu-vim'
Plug 'prettier/vim-prettier'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
" Plug 'sentientmonkey/vim-flog'
" Plug 'leroyg/vim-flay'

call plug#end()

set termguicolors
set softtabstop=2 tabstop=2 shiftwidth=2 smarttab smartindent expandtab
set colorcolumn=80
set nowrap
set number
set list listchars=trail:.
syntax enable
set background=dark

" automatically try and add js extensions for gf on relative paths
set suffixesadd=.js,.jsx

"colorscheme solarized
colorscheme ayu

nnoremap <S-j> <C-f>
nnoremap <S-k> <C-b>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ag / ack
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
  let $FZF_DEFAULT_COMMAND = 'ag --hidden -g ""'
end

" fzf
nmap <leader>t :Files<cr>

" nerdtree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

function ToggleNERDTree()
  if exists('b:NERDTree') && b:NERDTree.isTabTree()
    :NERDTreeToggle
  else
    :NERDTreeFind
  endif

endfunction

map <leader>n :call ToggleNERDTree()<cr>

" vim-vue
let g:vue_disable_pre_processors=1

let g:ale_rust_rls_config = { 'rust': { 'clippy_preference': 'on' } }

" ale linting & fixing
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'ruby': ['rubocop', 'reek'],
      \ 'jsx': ['stylelint', 'eslint']
      \}

let g:ale_fixers = { 'typescript': ['eslint'], 'javascript': ['eslint'], 'ruby': ['rubocop'], 'jsx': ['stylelint', 'eslint'], 'rust': ['rustfmt'] }
let g:ale_fix_on_save = 1

" coc autocompletion
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json', 'coc-yaml', 'coc-css', 'coc-html']

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


command Pretty execute "!rbprettier --write %"

command Test execute "tabnew % | term yarn test %"
command Rspec execute "tabnew % | term c rspec %"
