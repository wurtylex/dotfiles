local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>a", mark.add_file, opts)
vim.keymap.set("n", "<A-e>", ui.toggle_quick_menu, opts)
vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, opts)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, opts)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, opts)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, opts)
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end, opts)
vim.keymap.set("n", "<C-j>", function() ui.nav_next() end, opts)
vim.keymap.set("n", "<C-k>", function() ui.nav_prev() end, opts)
