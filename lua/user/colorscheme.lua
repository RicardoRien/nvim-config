-- vim.cmd [[
-- try
--   colorscheme onedark
--   hi CursorLineNr guifg=yellow
--   " Cursor line Color (Main number)
--   " hi CursorLineNr guifg=#E6BE8A
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=warmer
-- endtry
-- ]]

-- :hi CursorLineNr guifg=blue

-- Lua
-- require('onedark').setup  {}

require('neosolarized').setup  {}

require('onedark').setup {
  -- Main options --
  style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true,  -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  -- toggle theme style ---
  toggle_style_key = '<F5>', -- Default keybinding to toggle
  toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {}, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    background = true,    -- use background color for virtual text
  },
}

require('onedark').load()

vim.cmd [[
  try
    hi CursorLineNr guifg=yellow gui=bold
    autocmd FileType * highlight rainbowcol1 guifg=#e42adf 
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
  endtry
]]
--
-- vim.cmd([[ autocmd FileType * highlight rainbowcol1 guifg=#FF7B72 gui=bold ]])
