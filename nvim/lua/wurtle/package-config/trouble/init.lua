require("trouble").setup({
  severity = vim.diagnostic.severity.WARN,
})
-- Trouble
vim.api.nvim_set_keymap('n', '<leader>d', ':TroubleToggle<CR>', opts)
