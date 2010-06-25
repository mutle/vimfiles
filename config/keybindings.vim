" Ctrl-l - Hashrocket
imap <C-l> <Space>=><Space>

" Tab - Indent
nmap <TAB> >>
vmap <TAB> >>

" Shift-Tab - Unindent
nmap <S-TAB> <<
vmap <S-TAB> <<

" Y - Yank line
map Y y$

" <leader> v - Vertical split
nmap <leader>v :vsplit<CR> <C-w><C-w>
" <leader> s - Horizontal split
nmap <leader>s :split<CR> <C-w><C-w>

" <leader> w - Window commands 
nmap <leader>w <C-w><C-w>_

" ,hjkl - Move cursor to window
nmap ,h <C-w>h
nmap ,j <C-w>j
nmap ,k <C-w>k
nmap ,l <C-w>l



" Plugin keybindings


" <leader> t - Toggle Tag list
map <Leader>t :TlistToggle<CR>


" Ctrl-b - Show BufExplorer
map <C-b> <ESC>:BufExplorer<RETURN> 

" Ctrl-tab - Show NerdTree
map <C-tab> <ESC>:NERDTreeToggle<RETURN>

" <leader> n - Show NerdTree
map <leader>n <ESC>:NERDTreeToggle<RETURN>

