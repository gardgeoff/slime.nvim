-- Bufferline highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
	-- Background for inactive buffers, referenced via { attribute = 'bg', highlight = 'BufferlineInactive' }
	utils.highlight("BufferlineInactive", {
		fg = colors.comment,
		bg = colors.line,
	}, config)

	-- Muted text on the statusline background, used for the neo-tree offset title
	utils.highlight("StatusLineComment", {
		fg = colors.comment,
		bg = colors.line,
	}, config)
end

return M
