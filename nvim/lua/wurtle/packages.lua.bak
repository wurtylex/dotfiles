return require('packer').startup(function(use)
  -- Dependencies
  use 'nvim-lua/plenary.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Color Scheme 
  use 'EdenEast/nightfox.nvim'
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'xiyaowong/transparent.nvim'
  -- Navigation
  use 'nvim-telescope/telescope.nvim'
  use 'ThePrimeagen/harpoon'
  -- TreeSitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-treesitter/playground'
  -- AutoPairings 
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }
  -- File Explorer 
  use 'nvim-tree/nvim-tree.lua'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'
  -- Auto Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- Better Notifications
  -- use 'rcarriga/nvim-notify' -- Note for wurtle set this up later 
  -- Better Status Bar
  use 'nvim-lualine/lualine.nvim'
  -- Tablines
  use 'romgrk/barbar.nvim'
  -- null-ls
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Mason for installating stuff
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use 'williamboman/mason-lspconfig.nvim'
  -- Display Errors Better
  use 'folke/trouble.nvim'
end)
