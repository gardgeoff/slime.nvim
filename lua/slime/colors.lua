local utils = require("slime.utils")

local M = {}

-- Alpha colors VS Code draws over something other than the editor background.
local composite_on = {
	tab_inactive_fg = "tab_inactive",
	accent = "statusbar",
}

function M.resolve(opts)
	local c = vim.deepcopy(require("slime.palette"))
	opts.on_colors(c)

	for name, value in pairs(c) do
		if type(value) == "string" and composite_on[name] == nil then
			c[name] = utils.alpha(value, c.bg)
		end
	end
	for name, base in pairs(composite_on) do
		c[name] = utils.alpha(c[name], c[base])
	end

	-- Solid background for blending and for use as a foreground, even when transparent.
	c.bg_solid = c.bg

	if opts.transparent then
		c.bg = "NONE"
		c.sidebar = "NONE"
		c.float = "NONE"
		c.terminal_bg = "NONE"
	end

	return c
end

return M
