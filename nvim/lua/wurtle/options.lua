local options = {
	syntax = "ON",
	ignorecase = true,
	smartcase = true,
	incsearch = true,
	hlsearch = false,
	smarttab = true,
	expandtab = true,
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2,
	splitright = true,
	splitbelow = true,
	number = true,
	undofile = true,
	clipboard = "unnamedplus",
	conceallevel = 0,
	fileencoding = "utf-8",
	hidden = true,
	mouse = "a",
	showmode = false,
	pumheight = 10,
	scrolloff = 4,
	sidescrolloff = 4,
	backup = false,
	writebackup = false,
	swapfile = false,
	termguicolors = true,
  wrap = false,
	--conceallevel = 2,
	--signcolumn = "yes",
	--termguicolors = true,
	--cursorline = true,
}

vim.g.tex_flavor = "latex"

for k, v in pairs(options) do
	vim.opt[k] = v
end
