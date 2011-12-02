" Taglist settings
let Tlist_Show_Menu=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_OnSelect=1
let Tlist_Compact_Format=1

" Disable JavaScript plugin logging
let g:js_indent_log = 0

let g:rubytest_cmd_test = "rvm use 1.9.2; /usr/bin/env ruby -Itest %p"
let g:rubytest_cmd_testcase = "rvm use 1.9.2; /usr/bin/env ruby -Itest %p -n '/%c/'"

" Ignore .rbc files in NERDTree
let NERDTreeIgnore=['\.rbc$', '\~$']

" TagList Objective-C
let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'
nmap <leader>ct :!ctags -R *<CR>
