" - Vim mapping keys meanings -
" inoremap = only works in insert mode
" The ':map' command creates a key map that works in normal, visual, select and operator pending modes. 
" The ':map!' command creates a key map that works in insert and command-line mode.

" Save with Space + w and Quit with Space + q
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Better nav for omnicomplete (autocomplete suggestion)
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I HATE <esc> more than anything else (INSERT MODE + FAST JK || KJ = <ESC>) inoremap jk <Esc> inoremap kj <Esc>
inoremap jk <Esc> 
inoremap kj <Esc> 

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" NERDTree closes after 1 open (not cool at the moment)
let NERDTreeQuitOnOpen=1
" Open NERDTree with LeaderKey + nt
" nmap <Leader>nt :NERDTreeFind<CR>
" Open NERDTree with LeaderKey + n
nmap <Leader>n :NERDTreeFind<CR>

" @ to clean the search made with / (Press SPACE + z)
" OR try with :noh but this have a weird behavior.
 nmap <Leader>z :let @/=""<CR>

" When replace [:%s/foo/bar] before you hit Enter you'll see the live result 
set inccommand=nosplit

" Creates a file if doesn't exist
map <leader>gf :e <cfile><cr>

" Buffer Delete
nmap <Leader>d :bd<CR>
