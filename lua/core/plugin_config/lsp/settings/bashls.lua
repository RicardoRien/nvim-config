-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#bashls

return {
  cmd = { "bash-language-server", "start" },
  filetypes = { "bash", "sh" },
  settings = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)"
    }
  },
  single_file_support = true
}
