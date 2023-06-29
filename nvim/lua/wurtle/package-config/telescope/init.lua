local telescope = require("telescope")

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<A-j>'] = actions.move_selection_next,
        ['<A-k>'] = actions.move_selection_previous, 
        ["<S-k>"] = actions.preview_scrolling_up,
        ["<S-j>"] = actions.preview_scrolling_down,
        ["<S-h>"] = actions.preview_scrolling_left,
        ["<S-l>"] = actions.preview_scrolling_right,
      },
    },
  },
  pickers = {
    find_files = { theme = "ivy", },
    live_grep = { theme = "ivy", },
    buffers = { theme = "ivy", },
  },
})

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
