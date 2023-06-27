local actions = require("telescope.actions")

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
