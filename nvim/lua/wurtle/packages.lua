local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Dependencies
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  "lewis6991/gitsigns.nvim",
  "SmiteshP/nvim-navic",
  -- Color Scheme
  "EdenEast/nightfox.nvim",
  { "rose-pine/neovim",                as = "rose-pine" },
  "xiyaowong/transparent.nvim",
  -- Navigation
  { "nvim-telescope/telescope.nvim",   tag = "0.1.1" },
  -- TreeSitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-treesitter/playground",
  -- AutoPairings
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  -- File Explorer
  "nvim-tree/nvim-tree.lua",
  "stevearc/oil.nvim",
  -- LSP
  "neovim/nvim-lspconfig",
  "onsails/lspkind.nvim",
  -- Auto Completion
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  -- Snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  -- Better Status Bar
  "nvim-lualine/lualine.nvim",
  -- Tablines
  "romgrk/barbar.nvim",
  -- null-ls
  "jose-elias-alvarez/null-ls.nvim",
  -- Mason for installating stuff
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  "williamboman/mason-lspconfig.nvim",
  -- Display Errors Better
  "folke/trouble.nvim",
  -- temrinal
  { "akinsho/toggleterm.nvim", version = "*",         opts = {} },
  -- startup
  { 'goolord/alpha-nvim',      event = "VimEnter", },
  -- cool looking thing at the top
  { "utilyre/barbecue.nvim",   name = "barbecue",     version = "*", },
  -- vimtex for latex
  "lervag/vimtex", 
}

local opts = {}

require("lazy").setup(plugins, opts)
