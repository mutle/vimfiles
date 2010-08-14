"add the variable with the name a:varname to the statusline. highlight it as
"'error' unless its value is in a:goodvalues (a comma separated string)
function! Addstatuslineflag(varname, goodvalues)
  set statusline+=%#error#
  exec "set statusline+=%{Renderstlflag(".a:varname.",'".a:goodvalues."',1)}"
  set statusline+=%*
  exec "set statusline+=%{Renderstlflag(".a:varname.",'".a:goodvalues."',0)}"
endfunction

"returns a:value or ''
"
"a:goodvalues is a comma separated string of values that shouldn't be
"highlighted with the error group
"
"a:error indicates whether the string that is returned will be highlighted as
"'error'
"
function! Renderstlflag(value, goodvalues, error)
  let goodvalues = split(a:goodvalues, ',', 1)
  let good = index(goodvalues, a:value) != -1
  if (a:error && !good) || (!a:error && good)
    return '[' . a:value . ']'
  else
    return ''
  endif
endfunction

"statusline setup
set statusline=%f       "tail of the filename
call Addstatuslineflag('&ff', 'unix,')    "fileformat
call Addstatuslineflag('&fenc', 'utf-8,') "file encoding
set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=\ %{GitBranch()}
set statusline+=%{rvm#statusline()}

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
