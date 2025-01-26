local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
  return
end

-- must have install GO, or could cause problems! Same with C#
local servers = {
  "html",
  "cssls",
  "lua_ls",
  "tsserver",
  "pyright",
  "graphql",
  "cssmodules_ls",
  "rust_analyzer",
  "dockerls",
  "jsonls",
  "prismals",
  "yamlls",
  "solargraph",
  "gopls",
  "bashls",
  --[[ "csharp_ls", ]]
}
-- TODO: For python (config later...)
-- "black",
-- "flake8",

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
    on_attach = require("core.plugin_config.lsp.handlers").on_attach,
    capabilities = require("core.plugin_config.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  -- if server == "emmet_ls" then
    -- local emmet_ls_opts = require "lsp.settings.emmet_ls"
    -- opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  -- end

  if server == "lua_ls" then
    local emmet_ls_opts = require "core.plugin_config.lsp.settings.lua_ls"
    opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  end

  if server == "html" then
    local html_opts = require "core.plugin_config.lsp.settings.html"
    opts = vim.tbl_deep_extend("force", html_opts, opts)
  end

  if server == "gopls" then
    local gopls_opts = require "core.plugin_config.lsp.settings.gopls"
    opts = vim.tbl_deep_extend("force", gopls_opts, opts)
  end

  if server == "bashls" then
    local gopls_opts = require "core.plugin_config.lsp.settings.bashls"
    opts = vim.tbl_deep_extend("force", gopls_opts, opts)
  end

  -- if server == "pyright" then
    -- local pyright_opts = require "core.plugin_config.lsp.settings.pyright"
    -- opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  -- end

  lspconfig[server].setup(opts)
  ::continue::
end
