-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
return {
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = {
    "html",
    "javascriptreact",
    "typescriptreact"
  },
}
