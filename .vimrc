execute pathogen#infect()
" Display
syntax on
set number
set ruler
set cursorline
colorscheme distinguished

filetype plugin on

" cliboard syncing
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

" change the directory of the swap file
set directory^=$HOME/.vim/.tmp//

" Indent
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

" show hidden files
let NERDTreeShowHidden=1

" ctags
map <F3> :!sh -xc 'ctags -R'
map <C-m> :TlistToggle<CR>

" database connections
" let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=whatever:dbname=mysql'

