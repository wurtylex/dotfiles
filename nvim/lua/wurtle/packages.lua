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
  'nvim-lua/plenary.nvim',
  'nvim-tree/nvim-web-devicons',
  'lewis6991/gitsigns.nvim',
  -- Packer can manage itself
  'wbthomason/packer.nvim',
  -- Color Scheme 
  'EdenEast/nightfox.nvim',
  { 'rose-pine/neovim', as = 'rose-pine' }, 
  'xiyaowong/transparent.nvim',
  -- Navigation
  'nvim-telescope/telescope.nvim',
  'ThePrimeagen/harpoon',
  -- TreeSitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  'nvim-treesitter/playground',
  -- AutoPairings 
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  -- File Explorer 
  'nvim-tree/nvim-tree.lua',
  -- LSP
  'neovim/nvim-lspconfig',
  'onsails/lspkind.nvim',
  -- Auto Completion
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  -- Snippets
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  -- Better Notifications
  -- 'rcarriga/nvim-notify' -- Note for wurtle set this up later 
  -- Better Status Bar
  'nvim-lualine/lualine.nvim',
  -- Tablines
  'romgrk/barbar.nvim',
  -- null-ls
  'jose-elias-alvarez/null-ls.nvim',
  -- Mason for installating stuff
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  'williamboman/mason-lspconfig.nvim',
  -- Display Errors Better
  'folke/trouble.nvim',
}

local opts = {}

require("lazy").setup(plugins, opts)
