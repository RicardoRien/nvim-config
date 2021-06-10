" |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ||| Change s to z. REMEMBER: Uncomment this config in init.vim        |||
" ||| https://github.com/machakann/vim-sandwich/issues/89               |||
" |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

let g:sandwich_no_default_key_mappings = 1
silent! nmap <unique><silent> gd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> gr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> gdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
silent! nmap <unique><silent> grb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

let g:operator_sandwich_no_default_key_mappings = 1
" add
silent! map <unique> za <Plug>(operator-sandwich-add)
" delete
silent! xmap <unique> zr <Plug>(operator-sandwich-delete)
" replace
silent! xmap <unique> zr <Plug>(operator-sandwich-replace)
