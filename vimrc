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
set wm=2
set number
set cursorline
set backspace=indent,eol,start
set fileformats=unix,mac,dos
set iskeyword+=_,$,@,%,#,-,48-57,192-255
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"set nowrap      "dont wrap lines
set linebreak   "wrap lines at convenient points


set background=dark
set softtabstop=2

set grepprg=ack

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

filetype indent on

source ~/.vim/config/statusline.vim

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden


source ~/.vim/keystrokes/bufexplorer.vim
source ~/.vim/keystrokes/code.vim
source ~/.vim/keystrokes/fuzzyfinder_textmate.vim
source ~/.vim/keystrokes/navigation.vim
source ~/.vim/keystrokes/NERD_commenter.vim
source ~/.vim/keystrokes/NERD_tree.vim
source ~/.vim/keystrokes/taglist.vim
