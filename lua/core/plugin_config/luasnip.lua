-- FIXME
-- Esta fila no se esta exportando al init.lua
-- por lo tanto, todo se está cargando en cmp.lua
-- TODO:  Averiguar por que, ver modelos similares en este nvconfig
-- TODO: por cuestion de orden es mejor que todo esté aqui
local M = {}

local ls = require "luasnip"

function M.setup()
  ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = false
  }

  -- Lazy load snippets
  require("luasnip.loaders.from_vscode").lazy_load()
  -- Load custom typescript snippets
  require("luasnip.loaders.from_vscode").lazy_load { paths = { "./snippets/typescript" } }

  ls.filetype_extend("all", { "_" })
end


return M
