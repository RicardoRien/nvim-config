vim.api.nvim_create_augroup('bufcheck', {clear = true})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})

-- Start terminal in insert mode
vim.api.nvim_create_autocmd('TermOpen',     {
  group    = 'bufcheck',
  pattern  = '*',
  command  = 'startinsert | set winfixheight'
})

-- No wrap in gitcommit, markdown and .txt files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown", ".txt" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})
