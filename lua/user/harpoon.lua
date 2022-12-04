vim.api.nvim_set_keymap("n", "<Leader>hh", [[ <Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR> ]], {noremap = true, silent = true, expr = false})

vim.api.nvim_set_keymap("n", "<Leader>ha", [[ <Cmd>lua require("harpoon.mark").add_file()<CR> ]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<Leader>hu", [[ <Cmd>lua require("harpoon.ui").nav_file(1)<CR> ]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<Leader>hi", [[ <Cmd>lua require("harpoon.ui").nav_file(2)<CR> ]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<Leader>ho", [[ <Cmd>lua require("harpoon.ui").nav_file(3)<CR> ]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<Leader>hp", [[ <Cmd>lua require("harpoon.ui").nav_file(4)<CR> ]], {noremap = true, silent = true, expr = false})
