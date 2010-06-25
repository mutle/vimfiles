scriptencoding utf-8

let g:NERDTreeMapOpenSplit = 'i'
set nu
set sts=2

" Coloring of the dropdown
highlight Pmenu ctermbg=4 ctermfg=1 guibg=grey20 gui=bold

set nocompatible

silent! call pathogen#runtime_append_all_bundles()

set autoread
set go-=T
set cpoptions+=$
set virtualedit=all

syntax on

"colorscheme vibrantink
"colorscheme vividchalk
colorscheme topfunky-light

filetype plugin on
filetype on

"set directory=/tmp
set wm=2
set number
set ruler
set cursorline
set backspace=indent,eol,start
set fileformats=unix,mac,dos
set iskeyword+=_,$,@,%,#,-,48-57,192-255
set history=1000
set complete-=i
set display=lastline

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set ignorecase
set smartcase

"set nowrap      "dont wrap lines
set linebreak   "wrap lines at convenient points


set background=dark
set softtabstop=2

set grepprg=grep

"indent settings
set shiftwidth=2
set softtabstop=2
set laststatus=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
"set foldlevel=1

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

set title
set visualbell

set nobackup
set nowritebackup

filetype indent on

source ~/.vim/config/statusline.vim

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

source ~/.vim/keystrokes/bufexplorer.vim
source ~/.vim/keystrokes/code.vim
source ~/.vim/keystrokes/command-t.vim
source ~/.vim/keystrokes/navigation.vim
source ~/.vim/keystrokes/NERD_commenter.vim
source ~/.vim/keystrokes/NERD_tree.vim
source ~/.vim/keystrokes/rubytest.vim
source ~/.vim/keystrokes/shell.vim
" source ~/.vim/keystrokes/taglist.vim

augroup objective-j
  au! BufRead,BufNewFile *.j set filetype=objective-j
  au! Syntax objective-j source ~/.vim/syntax/objj.vim
augroup END
