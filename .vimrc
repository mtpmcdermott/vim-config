execute pathogen#infect()

" Display
syntax on
set number
set ruler
set cursorline
colorscheme distinguished

filetype plugin on

" change the directory of the swap file
set directory^=$HOME/.vim/.tmp//

" Indent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Autocomplete
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" pane navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" NERDTree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close if only the tree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle the tree
map <C-n> :NERDTreeToggle<CR>

" show hidden files
let NERDTreeShowHidden=1

" ctags
map <F3> :!sh -xc 'ctags -R'
map <C-m> :TlistToggle<CR>

" database connections
" let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=whatever:dbname=mysql'

