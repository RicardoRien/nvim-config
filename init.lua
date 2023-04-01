require "user.plugins"
require "user.luasnip"
require "user.colorscheme"
require "user.quickscope"
require "user.lualine"
require "user.options"
require "user.cmp"
require "user.functions"
require "user.telescope"
require "user.autocommands"
require "user.keymaps"
require "user.comment"
require "user.autopairs"
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
require "user.navbuddy"
--[[ require "user.whichkey" ]]

-- require('colorbuddy').colorscheme('cobalt2')
-- Delete ^M
-- :%s/\r//g 
-- asdf ^M

--[[ vim.api.nvim_create_user_command("Deletem", function() ]]
--[[   vim.cmd [[command! :%s/\r//g]]
--[[ end, { nargs = "*" }) ]]

function _G.deletem()
 vim.cmd [[command! :%s/\r//g <BAR>]]
end

vim.api.nvim_create_user_command("Deletem", function()
  deletem()
end, { nargs = "*" })


--[[ local old_notify = vim.notify ]]
--[[ local silence_pat = '[lspconfig] cmd ("cargo' ]]
--[[ vim.notify = function(msg, level, opts) ]]
--[[ 	if (string.sub(msg, 1, string.len(silence_pat)) ~= silence_pat) ]]
--[[ 	then ]]
--[[ 		old_notify(msg, level, opts) ]]
--[[ 	end ]]
--[[ end ]]
