local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = '|',
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      'diff',
      'diagnostics',
      {
        require("grapple").statusline,
        cond = require("grapple").exists
      }
    },
    lualine_c = {{
      'filename',
      path = 1
    }},
    lualine_x = {'searchcount', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
})
