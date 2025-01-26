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
  -- toggle_style_key = '<F5>', -- Default keybinding to toggle
  -- toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

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

require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    -- sidebars = "dark", -- style for sidebars, see below
    -- floats = "dark", -- style for floating windows
    --[[ sidebars = "transparent", ]]
    --[[ floats = "transparent", ]]
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  --[[ ---@param colors ColorScheme ]]
  on_colors = function(_) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  --[[ ---@param highlights Highlights ]]
  --[[ ---@param colors ColorScheme ]]
  on_highlights = function(_, _) end,
})

-- require('onedark').load()
require('tokyonight').load()
--require('cobal2').load()
--[[ require('user.colorscheme.neosolarizedrc').load() ]]

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
