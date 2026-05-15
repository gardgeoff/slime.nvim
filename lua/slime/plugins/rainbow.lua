-- Rainbow brackets highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
	utils.highlight("RainbowDelimiterRed", {
		fg = colors.number,
	}, config)
	utils.highlight("RainbowDelimiterYellow", {
		fg = colors.string,
	}, config)
	utils.highlight("RainbowDelimiterBlue", {
		fg = colors.type,
	}, config)
end

return M
