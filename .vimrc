execute pathogen#infect()
" Display
syntax on
set number
set ruler
colorscheme distinguished

" Indent
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Controls
set mouse=a

" Autocomplete
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i

" NERDTree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close if only the tree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle the tree
map <C-n> :NERDTreeToggle<CR>

" toggle source code tree
map <C-m> :TlistToggle<CR>>

" database connections
" let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=whatever:dbname=mysql'
