" |-------------------------------------------------------------|
" |------------------------ Vim-Plug ---------------------------|
" |-------------------------------------------------------------|
call plug#begin('~/.config/nvim/autoload/plugged')

    " Cheatsheet KeyBidings !
    " Plug 'liuchengxu/vim-which-key'

    " = = Startify (Initial screen) = =
    Plug 'mhinz/vim-startify'

    " Emmet-vim [HTML & CSS autocomplete]
    Plug 'mattn/emmet-vim'

    " Vim-LSP / Autocomplete
    " Plug 'prabirshrestha/vim-lsp'
    " Plug 'mattn/vim-lsp-settings'
    " Plug 'prabirshrestha/asyncomplete.vim'
    " Plug 'prabirshrestha/asyncomplete-lsp.vim'

    " Ale Linter
    " Plug 'dense-analysis/ale'
    
    " Prettier
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }

    " // Commentary-Vim // 
    Plug 'tpope/vim-commentary'

    " // ( Raiwbow Parentheses )
    Plug 'junegunn/rainbow_parentheses.vim'

    " Better Syntax Support!
    Plug 'sheerun/vim-polyglot'

    "   ~ File Explorer ~
    Plug 'scrooloose/NERDTree'

    "     { Auto pairs }
    Plug 'jiangmiao/auto-pairs'

    "     . Vim-Repeat .
    Plug 'tpope/vim-repeat'

    "      'Vim-Surround'
    Plug 'tpope/vim-surround'

    "  `Vim-Sandwich`` (Better than Vim-Surround)
    "   if You want to change mapping of keys from s to z, for example, look at this:
    "   https://github.com/machakann/vim-sandwich/issues/89#issuecomment-583746775
    " Plug 'machakann/vim-sandwich' 

    " Move between directories and code
    Plug 'christoomey/vim-tmux-navigator'

    "     | Scroll-bar vim |
    " Plug 'zarainia/vim-scrollbar'

    " ? Search words ???
    " Plug 'easymotion/vim-easymotion'
    Plug 'justinmk/vim-sneak'

    " Search horizontal word QuickScope
    Plug 'unblevable/quick-scope'

    " Markdown-preview ~Neovim
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    
    " ~ ~ ~ ~ ~ ~ Themes ~ ~ ~ ~ ~ ~
    Plug 'mhartington/oceanic-next'
    " Plug 'morhetz/gruvbox'
    " Plug 'joshdick/onedark.vim'
    " Plug 'tomasiser/vim-code-dark'

    "  - - - Status Line - - - 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Lines!
    Plug 'Yggdroot/indentLine'
    Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()
" |------------------------ The End ---------------------------|
