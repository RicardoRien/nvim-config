" >>> Switch AIRLINE Theme <<<
" let g:airline_theme='gruvbox'
"let g:airline_theme = 'onedark'
let g:airline_theme='oceanicnext'
"let g:airline_theme='transparent'
"let g:airline_theme = 'codedark'

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" Shows just the name of the file and NOT the path, in tabs
let g:airline#extensions#tabline#fnamemod = ':t'


" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = 'Β»'
    let g:airline_left_sep = 'βΆ'
    let g:airline_right_sep = 'Β«'
    let g:airline_right_sep = 'β'
    let g:airline_symbols.crypt = 'π'
    let g:airline_symbols.linenr = 'β°'
    let g:airline_symbols.linenr = 'β'
    let g:airline_symbols.linenr = 'β€'
    let g:airline_symbols.linenr = 'ΒΆ'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = 'γ'
    let g:airline_symbols.branch = 'β'
    let g:airline_symbols.paste = 'Ο'
    let g:airline_symbols.paste = 'Γ'
    let g:airline_symbols.paste = 'β₯'
    let g:airline_symbols.spell = 'κ¨'
    let g:airline_symbols.notexists = 'Ι'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = 'ξ°'
    let g:airline_left_alt_sep = 'ξ±'
    let g:airline_right_sep = 'ξ²'
    let g:airline_right_alt_sep = 'ξ³'
    let g:airline_symbols.branch = 'ξ '
    let g:airline_symbols.readonly = 'ξ’'
    let g:airline_symbols.linenr = 'β°'
    let g:airline_symbols.maxlinenr = 'ξ‘'


