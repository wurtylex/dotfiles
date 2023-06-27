local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local map = vim.api.nvim_set_keymap
local map_ = vim.keymap.set
vim.g.mapleader = " "

-- Essentially just some window navigation
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)

-- Resize 
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Exit insert mode
map("i", "jk", "<ESC>", opts)

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Switch Transparent View 
map("n", "tt", ":TransparentToggle<CR>", opts)

-- FuzzyFinder 
local builtin = require('telescope.builtin')
map_("n", "<leader>ff", builtin.find_files, opts)
map_("n", "<leader>fg", builtin.live_grep, opts)

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
map_("n", "<leader>a", mark.add_file, opts)
map_("n", "<A-e>", ui.toggle_quick_menu, opts)
map_("n", "<leader>1", function() ui.nav_file(1) end, opts)
map_("n", "<leader>2", function() ui.nav_file(2) end, opts)
map_("n", "<leader>3", function() ui.nav_file(3) end, opts)
map_("n", "<leader>4", function() ui.nav_file(4) end, opts)
map_("n", "<leader>5", function() ui.nav_file(5) end, opts)
map_("n", "<C-j>", function() ui.nav_next() end, opts)
map_("n", "<C-k>", function() ui.nav_prev() end, opts)

-- File Explorer 
map("n", "<leader>e", ':NvimTreeToggle<CR>', opts)
map("n", "<leader>fe", ':NvimTreeFocus<CR>', opts)

-- LSP
map_("n", "gd", vim.lsp.buf.definition, opts)
map_("n", "gi", vim.lsp.buf.implementation, opts)

-- Naviagate buffers
map("n", "<A-l>", ":bnext<CR>", opts)
map("n", "<A-h>", ":bprevious<CR>", opts)
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
map('n', '<A-q>', '<Cmd>BufferClose<CR>', opts)

-- Trouble 
map('n', '<leader>t', ':TroubleToggle<CR>', opts)
