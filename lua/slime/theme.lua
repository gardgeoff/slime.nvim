local groups = require("slime.groups")

local M = {}

-- Builds the full highlight table: { [group] = spec }.
function M.build(c, opts)
	local hl = {}
	local function add(module)
		for name, spec in pairs(require(module)(c, opts)) do
			hl[name] = spec
		end
	end

	for _, name in ipairs(groups.core) do
		add("slime.groups." .. name)
	end
	for _, name in ipairs(groups.enabled_plugins(opts)) do
		add("slime.groups.plugins." .. name)
	end
	for _, name in ipairs(groups.languages) do
		add("slime.languages." .. name)
	end

	opts.on_highlights(hl, c)
	return hl
end

function M.terminal(c)
	local ansi = {
		c.ansi_black,
		c.ansi_red,
		c.ansi_green,
		c.ansi_yellow,
		c.ansi_blue,
		c.ansi_magenta,
		c.ansi_cyan,
		c.ansi_white,
	}
	-- VS Code's slime uses the same values for the bright variants.
	for i, color in ipairs(ansi) do
		vim.g["terminal_color_" .. (i - 1)] = color
		vim.g["terminal_color_" .. (i + 7)] = color
	end
end

return M
