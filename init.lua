require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

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
