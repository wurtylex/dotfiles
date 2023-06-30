local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	"██╗    ██╗██╗   ██╗██████╗ ████████╗██╗   ██╗     ██╗   ██╗██╗███╗   ███╗",
	"██║    ██║██║   ██║██╔══██╗╚══██╔══╝╚██╗ ██╔╝     ██║   ██║██║████╗ ████║",
	"██║ █╗ ██║██║   ██║██████╔╝   ██║    ╚████╔╝█████╗██║   ██║██║██╔████╔██║",
	"██║███╗██║██║   ██║██╔══██╗   ██║     ╚██╔╝ ╚════╝╚██╗ ██╔╝██║██║╚██╔╝██║",
	"╚███╔███╔╝╚██████╔╝██║  ██║   ██║      ██║         ╚████╔╝ ██║██║ ╚═╝ ██║",
	" ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝          ╚═══╝  ╚═╝╚═╝     ╚═╝",
}

dashboard.section.buttons.val = {
	dashboard.button("n", "   New File", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "󰈞   Find Files", ":Telescope find_files<CR>"),
	dashboard.button("g", "󰈞   Grep Files", ":Telescope live_grep<CR>"),
	dashboard.button("r", "   Recent Files", ":Telescope oldfiles<CR>"),
	dashboard.button("s", "   Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("u", "󰑓   Update Plugins", ":Lazy update<CR>"),
	dashboard.button("q", "   Quit NVIM", ":qa<CR>"),
}

local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()
alpha.setup(dashboard.opts)
