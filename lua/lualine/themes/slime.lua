-- Lualine theme: `theme = "slime"`. Built from VS Code's status bar, with mode colors from the theme's buttons and badges.
local c = require("slime").colors()

local function mode(bg)
	return {
		a = { fg = c.list_active_fg, bg = bg, gui = "bold" },
		b = { fg = c.sidebar_fg, bg = c.activity_bar },
		c = { fg = c.statusbar_fg, bg = c.statusbar },
	}
end

return {
	normal = mode(c.button),
	insert = mode(c.badge),
	visual = mode(c.find_match),
	replace = mode(c.debugging),
	command = mode(c.badge_active),
	terminal = mode(c.button),
	inactive = {
		a = { fg = c.statusbar_fg, bg = c.statusbar },
		b = { fg = c.statusbar_fg, bg = c.statusbar },
		c = { fg = c.statusbar_fg, bg = c.statusbar },
	},
}
