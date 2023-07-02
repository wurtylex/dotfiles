local dirc = "wurtle.package-config."

local configs = {
	"colors",
	"telescope",
	"FileExplorer",
	"treesitter",
	"LSP",
	"lualine",
	"mason-config",
	"trouble",
	"toggleterm",
	"alphastartup",
	"barbecue",
	"vimtex",
}

for _, v in ipairs(configs) do
	require(dirc .. v)
end
