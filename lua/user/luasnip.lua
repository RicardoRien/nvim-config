local M = {}

function M.setup()
  local luasnip = require "luasnip"

  luasnip.config.set_config {
    history = false,
    updateevents = "TextChanged,TextChangedI",
  }

  require("../../snippets/react_ts/generated.json").load()
  require("../../snippets/typescript/generated.json").load()
end

return M
