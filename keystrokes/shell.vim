" SHELL

nmap ,cd :lcd %:h<CR>

command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)

function! s:RunShellCommand(cmdline)
  botright new

  setlocal buftype=nofile 
  setlocal bufhidden=delete 
  setlocal nobuflisted 
  setlocal noswapfile 
  setlocal nowrap
  setlocal filetype=shell
  setlocal syntax=shell

  call setline(1,a:cmdline)
  call setline(2,substitute(a:cmdline,'.','=','g'))
  execute 'silent $read !'.escape(a:cmdline,'%#')
  setlocal nomodifiable
  1
endfunction

nmap <leader>sh :Shell 

" IRB
autocmd FileType irb inoremap <buffer> <silent> <CR> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<CR>
nnoremap <leader>irb :<C-u>below new<CR>:setfiletype irb<CR>:set syntax=ruby<CR>:set buftype=nofile<CR>:set bufhidden=delete<CR>i

