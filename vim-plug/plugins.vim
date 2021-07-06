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

    " Syntax hightling for styled-components
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    " Vim-LSP / Autocomplete
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    " For Vim-LSP HTML-CSS completition 
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

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

    " Eunuch ~ Rename / Move Files easily 
    Plug 'tpope/vim-eunuch'

    " Telescope (It's better that FZF)
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    "   -- FZF --
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'
    " Plug 'airblade/vim-rooter'

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

    " Floaterm
    Plug 'voldikss/vim-floaterm'

    " Markdown-preview ~Neovim
    " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    
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

    " vim-devicons
    Plug 'ryanoasis/vim-devicons'

call plug#end()
" |------------------------ The End ---------------------------|
