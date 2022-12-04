vim.api.nvim_create_augroup('bufcheck', {clear = true})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

-- start terminal in insert mode
vim.api.nvim_create_autocmd('TermOpen',     {
  group    = 'bufcheck',
  pattern  = '*',
  command  = 'startinsert | set winfixheight'
})

-- vim.api.nvim_create_autocmd('ColorScheme', {
--   pattern = 'onedark',
--   desc = 'extend / override onedark',
--   callback = function()
--     local h = function(...) vim.api.nvim_set_hl(0, ...) end
--
--     h('String', {fg = '#FFEB95'})
--     h('TelescopeMatching', {link = 'Boolean'})
--   end
-- })
