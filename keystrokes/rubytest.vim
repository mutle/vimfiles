let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "spec -f specdoc %p"
let g:rubytest_cmd_example = "spec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "cucumber %p"
let g:rubytest_cmd_story = "cucumber %p -n '%c'"

map <Leader>\ :!bundle exec rake<CR>
map <Leader>] :!bundle exec rake 

" map <Leader>\ <Plug>RubyTestRun " change from <Leader>t to <Leader>\
" map <Leader>] <Plug>RubyFileRun " change from <Leader>T to <Leader>]

" map <Leader>\ <Plug>CustomRubyTestRun
" map <Leader>\ <Plug>CustomRubyTestRun " change from <Leader>t to <Leader>\
" nnoremap <leader>\ :call CustomRunTests()<cr>
" :redraw<cr>

" :call JumpToError()<cr>

" map <Leader>\ <Plug>CustomRunTests
