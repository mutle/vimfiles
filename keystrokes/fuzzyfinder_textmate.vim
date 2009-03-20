let g:fuzzy_ignore = "gems* log* vendor*"

" binds \ t to textmate-style fuzzy finder
map <C-t> :FuzzyFinderTextMate<CR>
let g:fuzzy_matching_limit=60 " this seems to help performance
let g:fuzzy_ceiling=20000     " I have some projects with a lot of files...
