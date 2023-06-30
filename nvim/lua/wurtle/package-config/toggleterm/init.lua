local toggleterm = require("toggleterm")

toggleterm.setup()

vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm direction=float<CR>", opts)
