" Ident line config
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_fileTypeExclude = ["vimwiki", "coc-explorer", "help", "undotree", "diff"]
let g:indentLine_bufNameExclude = ["help", "terminal"]

" No problem with backticks ``` in Markdown file .md  <--- check this, remove if somethng weird happend
" let g:indentLine_setConceal = 2

" default ''.
" n for Normal mode
" v for Visual mode
" i for Insert mode
" c for Command line editing, for 'incsearch'
let g:indentLine_concealcursor = ""
