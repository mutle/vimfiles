"statusline setup
set statusline=%f       "tail of the filename
call addstatuslineflag('&ff', 'unix,')    "fileformat
call addstatuslineflag('&fenc', 'utf-8,') "file encoding
set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%l   "cursor line/total lines
set statusline+=\ %p    "percent through file
set laststatus=2

