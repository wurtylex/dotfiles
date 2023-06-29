local opts = { noremap = true, silent = true }

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  disable_netrw = true,
})

-- auto close
local function is_modified_buffer_open(buffers)
    for _, v in pairs(buffers) do
        if v.name:match("NvimTree_") == nil then
            return true
        end
    end
    return false
end

vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if
            #vim.api.nvim_list_wins() == 1
            and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil
            and not is_modified_buffer_open(vim.fn.getbufinfo({ bufmodified = 1 }))
        then vim.cmd("quit")
        end
    end,
})

require("oil").setup({
  use_default_keymaps = false,
  keymaps = {
    ["-"] = "actions.select", 
    ["_"] = "actions.parent", 
    ["qq"] = "actions.close", 
    ["<A-p>"] = "actions.preview", 
  }
})

-- Open File Managers 
-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap("n", "<leader>fe", ':NvimTreeFocus<CR>', opts)
-- oil
vim.api.nvim_set_keymap("n", "<leader>o", ':Oil<CR>', opts)
