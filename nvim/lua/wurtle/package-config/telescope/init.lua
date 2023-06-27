local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ['<A-j>'] = actions.move_selection_next,
        ['<A-k>'] = actions.move_selection_previous, 
      },
    },
  }
}

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
