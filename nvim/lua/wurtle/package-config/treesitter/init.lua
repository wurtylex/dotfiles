local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "latex", "bibtex", "cpp", "python" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
