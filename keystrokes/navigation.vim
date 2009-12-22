" right arrow (normal mode) switches buffers  (excluding minibuf)
map <C-Right> <ESC>:bnext<RETURN>
" left arrow (normal mode) switches buffers (excluding minibuf)
map <C-Left> <ESC>:bprev<RETURN>

" open tabs with command-<tab number>
map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

" window splitting mappings
" split vertically with <leader> v
" split horizontally with <leader> s
nmap <leader>v :vsplit<CR> <C-w><C-w>
nmap <leader>s :split<CR> <C-w><C-w>
" Make it way easier to switch windows (<leader>w)
nmap <leader>w <C-w><C-w>_

nmap ,h <C-w>h
nmap ,j <C-w>j
nmap ,k <C-w>k
nmap ,l <C-w>l

" \F to startup an ack search
map <leader>F :Ack<space>
