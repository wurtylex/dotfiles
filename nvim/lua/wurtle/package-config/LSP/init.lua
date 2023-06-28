local lspdirc = "wurtle.package-config.LSP."

local LSPCONFIGS = {
  "LSP-Servers",
  "null-ls",
}

for _, v in ipairs(LSPCONFIGS) do
  require(lspdirc .. v)
end
