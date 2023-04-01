local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
  return
end

local servers = {
  "cssls",
  "graphql",
  "cssmodules_ls",
  "rust_analyzer",
  "html",
  "dockerls",
  "jsonls",
  "lua_ls",
  "tsserver",
  "pyright",
  "prismals",
  "yamlls"
}

local settings = {
  ui = {
    border = "rounded",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup {
  ensure_installed = servers,
  automatic_installation = true,
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  --[[ if server == "emmet_ls" then ]]
  --[[   local emmet_ls_opts = require "user.lsp.settings.emmet_ls" ]]
  --[[   opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts) ]]
  --[[ end ]]

  if server == "lua_ls" then
    local emmet_ls_opts = require "user.lsp.settings.lua_ls"
    opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  end

  if server == "html" then
    local html_opts = require "user.lsp.settings.html"
    opts = vim.tbl_deep_extend("force", html_opts, opts)
  end

  lspconfig[server].setup(opts)
  ::continue::
end

-- TODO: add something to installer later
-- require("lspconfig").motoko.setup {}
