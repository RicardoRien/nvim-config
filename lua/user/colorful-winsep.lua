local status_ok, colorfulWinsep = pcall(require, "colorful-winsep")
if not status_ok then
  return
end

colorfulWinsep.setup({
  highlight = {
    guibg = vim.api.nvim_get_hl_by_name("Normal", true)["background"],
    guifg = "#4DBDCB"
    --[[ guifg = "#97CA72" ]]
  },
})
