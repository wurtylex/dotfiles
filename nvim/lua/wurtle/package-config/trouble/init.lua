local opts = { noremap = true, silent = true }

require("trouble").setup({
  severity = vim.diagnostic.severity.WARN,
})
-- Trouble
vim.api.nvim_set_keymap('n', '<leader>t', ':TroubleToggle<CR>', opts)
