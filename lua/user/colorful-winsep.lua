local status_ok, colorfulWinsep = pcall(require, "colorful-winsep")
if not status_ok then
  return
end

colorfulWinsep.setup({
  -- highlight for Window separator
  highlight = {
    --bg = "#16161E",
    bg = "#4DBDCB",
    --fg = "#1F3442",
    fg = "#4DBDCB",
  },
  -- timer refresh rate
  interval = 30,
  -- This plugin will not be activated for filetype in the following table.
  no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest", "NvimTree" },
  -- Symbols for separator lines, the order: horizontal, vertical, top left, top right, bottom left, bottom right.
  symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
})
