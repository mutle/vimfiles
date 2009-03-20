let g:NERDTreeMapOpenSplit = 'i'
set nu
set sts=2

" Coloring of the dropdown
highlight Pmenu ctermbg=4 ctermfg=1 guibg=grey20 gui=bold

set nocompatible

syntax on

colorscheme vibrantink

filetype plugin on
filetype on

if has("gui")
  set gfn=BitStreamVeraSansMono:h16
endif

"set directory=/tmp
set wm=4
set number
set cursorline
set smarttab
set backspace=indent,eol,start
set fileformats=unix,mac,dos
set iskeyword+=_,$,@,%,#,-,48-57,192-255

set background=dark
set softtabstop=2

set grepprg=ack

source ~/.vim/keystrokes/code.vim
source ~/.vim/keystrokes/fuzzyfinder_textmate.vim
source ~/.vim/keystrokes/navigation.vim
source ~/.vim/keystrokes/NERD_commenter.vim
source ~/.vim/keystrokes/NERD_tree.vim
source ~/.vim/keystrokes/taglist.vim