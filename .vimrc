set nu
execute pathogen#infect()
syntax on
filetype plugin indent on
set shiftwidth=4
syntax enable
colorscheme monokai
" NERD comment config
let g:pydiction_location = '/home/quy/.vim/bundle/pydiction/complete-dict' 
let g:pydiction_menu_height = 3
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" remap nerdcomment 
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
let g:NERDCreateDefaultMappings = 0
