-- instalar tjdevries/colorbuddy.nvim 
require "user.luasnip"
require "user.colorscheme"
require "user.lualine"
require "user.options"
require "user.plugins"
require "user.cmp"
require "user.functions"
require "user.telescope"
require "user.autocommands"
require "user.keymaps"
require "user.comment"
require "user.autopairs"
require "user.quickscope"
require "user.emmet"
require "user.illuminate"
require "user.treesitter"
require "user.nvim-tree"
require "user.harpoon"
require "user.toggleterm"
require "user.alpha"
require "user.colorful-winsep"
require "user.cokeline"
require "user.lsp"
require "user.sneak"
require "user.todo-comments"
--[[ require "user.nvim-notify" ]]
--[[ require "user.leap" ]]
--[[ require "user.bufferline" ]]

-- require('colorbuddy').colorscheme('cobalt2')
-- Delete ^M
-- :%s/\r//g 
-- asdf ^M
-- asdf^M
-- asdf ^M
-- asdf ^M
-- asdf^M
-- asdf^M

--[[ vim.api.nvim_create_user_command("Deletem", function() ]]
--[[   vim.cmd [[command! :%s/\r//g]] 
--[[ end, { nargs = "*" }) ]]

function _G.deletem()
 vim.cmd [[command! :%s/\r//g <BAR>]]
end

vim.api.nvim_create_user_command("Deletem", function()
  deletem()
end, { nargs = "*" })

