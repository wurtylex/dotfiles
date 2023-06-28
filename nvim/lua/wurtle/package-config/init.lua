local dirc = "wurtle.package-config."

local configs = {
  "colors",
  "telescope", 
  "FileExplorer",
  "treesitter", 
  "LSP", 
  "nvim-cmp", 
  "lualine", 
  "mason-config", 
  "trouble",
}

for _, v in ipairs(configs) do
  require(dirc .. v)
end
