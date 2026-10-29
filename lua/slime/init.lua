-- Main slime colorscheme module
local config = require("slime.config")

local M = {}

-- Stores options for later loads. Does not apply the colorscheme; use `:colorscheme slime`.
function M.setup(opts)
	config.setup(opts)
end

-- Applies the colorscheme. `opts` is layered over the setup() options for this load only.
function M.load(opts)
	opts = config.extend(opts)

	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end
	-- Set before colors_name: changing 'background' reloads the active colorscheme.
	if vim.o.background ~= "dark" then
		vim.o.background = "dark"
	end
	vim.g.colors_name = "slime"

	local c = require("slime.colors").resolve(opts)
	local theme = require("slime.theme")
	for group, spec in pairs(theme.build(c, opts)) do
		vim.api.nvim_set_hl(0, group, spec)
	end
	if opts.terminal_colors then
		theme.terminal(c)
	end
end

-- Resolved colors, for use in statuslines and other plugin configs.
function M.colors(opts)
	return require("slime.colors").resolve(config.extend(opts))
end

M.config = config

return M
