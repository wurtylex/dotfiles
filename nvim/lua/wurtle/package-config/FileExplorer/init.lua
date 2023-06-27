local opts = { noremap = true, silent = true }

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  disable_netrw = true,
})

vim.api.nvim_set_keymap("n", "<leader>e", ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap("n", "<leader>fe", ':NvimTreeFocus<CR>', opts)
