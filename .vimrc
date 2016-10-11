" lines numbers
set nu
" better contrast
" set background=dark
" active colors
syntax on
" choose colors
set background=dark
colorscheme solarized
hi Normal ctermbg=none
let g:solarized_termtrans=1
" highlight NonText ctermbg=none
" no tab when pasting
" set paste
" mouse selection to not have line numbers
" mac : CMD+ALT+SELECTION
" linux : SHIFT+SELECTION
set mouse=r

" no tilde files
set nobackup

" python options 
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

filetype indent on

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set autoindent		" always set autoindenting on

" powerline
set laststatus=2
set t_Co=256
let g:powerline_pycmd="py3"
