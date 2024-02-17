-- https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md
-- https://www.youtube.com/watch?v=i04sSQjd-qo
local util = require 'lspconfig/util'
return {
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      -- gofumpt = true,
      staticcheck = true,
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      }
    }
  }
}
