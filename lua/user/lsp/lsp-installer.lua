local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "cssls",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  "lua_ls",
  "tsserver",
  "pyright",
  "solargraph",
}

local settings = {
  ensure_installed = servers,
  ui = {
    icons = {},
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
    },
  },

  log_level = vim.log.levels.INFO,
}

lsp_installer.setup(settings)

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

  -- if server == "jsonls" then
  --   local jsonls_opts = require "user.lsp.settings.jsonls"
  --   opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  -- end
  --
  -- if server == "yamlls" then
  --   local yamlls_opts = require "user.lsp.settings.yamlls"
  --   opts = vim.tbl_deep_extend("force", yamlls_opts, opts)
  -- end

  if server == "lua_ls" then
    local sumneko_opts = require "user.lsp.settings.lua_ls"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "user.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "solargraph" then
    local solargraph_opts = require "user.lsp.settings.solargraph"
    opts = vim.tbl_deep_extend("force", solargraph_opts, opts)
  end

  -- if server == "solc" then
  --   local solc_opts = require "user.lsp.settings.solc"
  --   opts = vim.tbl_deep_extend("force", solc_opts, opts)
  -- end

  if server == "emmet_ls" then
    local emmet_ls_opts = require "user.lsp.settings.emmet_ls"
    opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  end

  if server == "jdtls" then
    goto continue
  end

  -- if server == "rust_analyzer" then
  --   local rust_opts = require "user.lsp.settings.rust"
  --
  --   local rust_tools_status_ok, rust_tools = pcall(require, "rust-tools")
  --   if not rust_tools_status_ok then
  --     return
  --   end
  --
  --   rust_tools.setup(rust_opts)
  --   goto continue
  -- end

  lspconfig[server].setup(opts)
  ::continue::
end

-- TODO: add something to installer later
-- require("lspconfig").motoko.setup {}
