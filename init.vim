" source ~/.nvimrc
" Now configurations will be here ->
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

" | | | | | Link To Config Plugins | | | | |

" Startify (Start-screen)
source $HOME/.config/nvim/plug-config/start-screen.vim

" NerdTree 
" source $HOME/.config/nvim/plug-config/nerdtree-config.vim

" Devicons *NerdTree Icons 
" source $HOME/.config/nvim/plug-config/devicons-config.vim

" Which-Key (Cheatsheet Keybidings) 
" source $HOME/.config/nvim/keys/which-key.vim

" Markdown-Preview config
source $HOME/.config/nvim/plug-config/markdown-preview.vim

" Emmet-vim [HTML] (key combinations)
source $HOME/.config/nvim/plug-config/emmet-vim.vim

" Telescope config 
source $HOME/.config/nvim/plug-config/telescope.vim

" FZF config 
" source $HOME/.config/nvim/plug-config/fzf.vim

" Sneak (search words)
source $HOME/.config/nvim/plug-config/sneak.vim

" Vim-Sandwich
" source $HOME/.config/nvim/plug-config/vim-sandwich.vim

" QuickScope (search words)
source $HOME/.config/nvim/plug-config/quickscope.vim

" Status Line (Vim Airline)
source $HOME/.config/nvim/themes/airline.vim

" Vim-ScrollBar |
" source $HOME/.config/nvim/plug-config/vim-scrollbar.vim

" | | | | IndentLine (Indentation lines) | | | |
source $HOME/.config/nvim/plug-config/indentLine.vim

"           [ [ [ Floaterm ] ] ]
source $HOME/.config/nvim/plug-config/floaterm.vim

"        ~ ~ ~ ~ ~ Themes ~ ~ ~ ~ ~
" >> CHECK: plugins.vim & airline.vim <<
" source $HOME/.config/nvim/themes/gruvbox.vim
" source $HOME/.config/nvim/themes/onedark.vim
" source $HOME/.config/nvim/themes/vscode-dark.vim
source $HOME/.config/nvim/themes/oceanicnext.vim

" |--------------------- THE END ----------------------------|

" //// Italic font when comment \\\\
highlight Comment cterm=italic gui=italic

" ~ ~ ~ ~ Transparent Background ~ ~ ~ ~
" hi Normal guibg=NONE ctermbg=NONE
