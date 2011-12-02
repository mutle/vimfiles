" Initialize Pathogen to load plugins from bundle/
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

runtime macros/matchit.vim

" Setup environment
scriptencoding utf-8
set nu
set sts=2

" Coloring of the dropdown
highlight Pmenu ctermbg=4 ctermfg=1 guibg=grey20 gui=bold

" Vim-mode
set nocompatible

" Update changed files automatically
set autoread

set cpoptions+=$

" Virtual editing
set virtualedit=all

" Syntax highlighting
syntax on

" Select colorscheme
colorscheme topfunky-light

" Background style
set background=dark

" Filetype detection
filetype plugin on
filetype indent on
filetype on

" Wrap margin
set wm=2

" Show line numbers
set number

" Rulers
set ruler

" Highlight current line
set cursorline

" File settings
set backspace=indent,eol,start
set fileformats=unix,mac,dos
set iskeyword+=_,$,@,%,#,-,48-57,192-255

" Keep history of 1000 last commands
set history=1000

" Not sure
set complete-=i
set display=lastline

" Show incomplete cmds down the bottom
set showcmd

" Show current mode down the bottom
set showmode

" Search while typing
set incsearch

" Highlight results
set hlsearch

" Ignore case by default
set ignorecase
set smartcase

" Line wrapping
set linebreak

" Use 2 soft-tabs
set softtabstop=2
set shiftwidth=2

" Use spaces not tabs
set expandtab

" Automatically indent new lines
set autoindent

" Use grep for fulltext search
set grepprg=grep

" Always show status line
set laststatus=2

" Fold at indentions
set foldmethod=indent

" 10 levels max
set foldnestmax=10

" Fold disabled by default
set nofoldenable

" Ctrl-p/Ctrl-n auto-completion
set wildmenu

" Command completion
set wildmode=list:longest
set wildignore=*.o,*.obj,*~,*.swp 

" Display trailing invisible characters
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Don't continue comment when using o/O
set formatoptions-=o

" Vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" Window title
set title

" Disable annoying beeps
set visualbell

" Disable backups
set nobackup
set nowritebackup

" Terminal colors
set t_Co=256

" Hide buffers when not displayed
set hidden

" Assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" Show invisible characters
set invlist

" Use rake as the default make program
set makeprg=rake

" ConqueTerm wrapper
function StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \ 
endfunction

" Custom status line
source ~/.vim/config/statusline.vim

" Custom keybindings
source ~/.vim/config/keybindings.vim

source ~/.vim/config/plugins.vim

source ~/.vim/config/custom.vim
