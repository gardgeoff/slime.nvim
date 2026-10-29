local utils = require("slime.utils")

-- Built-in diff groups. VS Code's slime doesn't set diff editor colors, so these tint the gutter colors.
return function(c, opts)
	return {
		DiffAdd = { bg = utils.blend(c.bg_solid, c.git_add, 0.15) },
		DiffChange = { bg = utils.blend(c.bg_solid, c.git_change, 0.3) },
		DiffDelete = { fg = c.git_delete, bg = utils.blend(c.bg_solid, c.git_delete, 0.15) },
		DiffText = { bg = utils.blend(c.bg_solid, c.git_change, 0.6) },

		diffAdded = { fg = c.git_add },
		diffChanged = { fg = c.git_modified },
		diffRemoved = { fg = c.git_delete },
		diffFile = { fg = c.func },
		diffLine = { fg = c.codelens },
		diffIndexLine = { fg = c.comment },
	}
end
