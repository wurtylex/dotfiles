local opts = { noremap = true, silent = true }

-- Trouble
vim.api.nvim_set_keymap('n', '<leader>t', ':TroubleToggle<CR>', opts)
