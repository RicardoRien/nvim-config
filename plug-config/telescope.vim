nnoremap <Leader>ff <cmd>Telescope find_files<cr>
nnoremap <Leader>b <cmd>Telescope buffers<cr>
nnoremap <Leader>fb <cmd>Telescope find_browser<cr>
nnoremap <Leader>fg <cmd>Telescope live_grep prompt_prefix=🔍 <cr>
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>
nnoremap <Leader>fs <cmd>Telescope git_status<cr>
nnoremap <Leader>fc <cmd>Telescope command_history<cr>

lua << EOF require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"}, mappings = { ["<Leader>q"] = actions.close, } } }
