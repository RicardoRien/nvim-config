local opts = { noremap = true, silent = true }
local noremapFalse = { noremap = false, silent = false }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Save with Space + w and Quit with Space + q
keymap("n", "<Leader>w", ":w<CR>", opts)
-- keymap("n", "<Leader>q", ":q<CR>", opts)


-- Space + a visual inner word
keymap("n", "<Leader>a", "viw", opts)
keymap("n", "<Leader>A", "viW", opts)

-- Space + y yarn inner word
keymap("n", "<Leader>y", "yiw", opts)

-- Go to end of line with -
keymap("n", "-", "$", opts)
keymap("v", "-", "$", opts)

-- Fix $ behavior, no extra space at the end of line
vim.keymap.set({ 'v', 'n' }, '$', 'g_')
vim.keymap.set({ 'v', 'n' }, '-', 'g_')

-- Remap + as % (easy to use)
keymap("n", "+", "%", noremapFalse)
keymap("v", "+", "%", noremapFalse)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Open Netrw.
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Remap Redo, U instead Ctrl+R
keymap("n", "U", "<C-R>", opts)

-- @ to clean the search made with / (Press SPACE + z)
-- AND delete Notifications
-- AND delete Noice view search virtualtext 
-- OR try with :noh but this have a weird behavior.-
--[[ keymap("n", "<Leader>z", ":let @/=''<CR>", opts) ]]
--[[ keymap("n", "<Leader>z", ":lua require('notify').dismiss()<CR>", opts) ]]
 --[[ keymap("n", "<Leader>z", ":noh<CR> <BAR> :lua require('notify').dismiss()<CR> <BAR> :let @/=''<CR>", opts) ]]
 --[[ keymap("n", "<Leader>z", ":let @/=''<CR>", opts) ]]
 keymap("n", "<Leader>z", ":nohlsearch<CR>", opts)


-- Turn off al notifications
--[[ lua require("notify").dismiss() ]]

--[[
  Go on top of a word you want to change
  Press cn or cN
  Type the new word you want to replace it with
  Smash that dot '.' multiple times to change all the other occurrences of the word
  It's quicker than searching or replacing. It's pure magic.
]]
keymap("n", "cN", "*``cgn", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
--keymap("n", "<S-l>", ":bnext<CR>", opts)
--keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts) -- Stay last Yank word. 

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>1", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- Live Grep: find a word inside the folder
keymap("n", "<c-g>", ":Telescope live_grep<CR>", opts)

-- Nvimtree
keymap("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

-- Buffer Delete
keymap("n", "<leader>d", ":Bdelete!<CR>", opts)

-- Change between relative numbers and normal numbers
vim.cmd [[nmap <f2> :set norelativenumber! number?<cr>]]

-- Copy relative path
vim.cmd [[nmap <f3> :let @+=@%<cr>]]

-- Set wrap to text (ideal for .txt files / Notes)
vim.cmd [[nmap <f4> :set wrap linebreak nolist<cr>]]

-- ":Q" as ":q"
vim.cmd [[command! Qa :qa]]
vim.cmd [[command! Q :q]]

--[[ vim.keymap.set('n', 'v', 'mav', { noremap = true }) ]]
--[[ vim.keymap.set('v', '<Esc>', "<Esc>`a", { noremap = true, silent = true }) ]]
