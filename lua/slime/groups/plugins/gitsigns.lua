local utils = require("slime.utils")

-- Gitsigns, using VS Code's gutter decoration colors.
return function(c, opts)
	return {
		GitSignsAdd = { fg = c.git_add },
		GitSignsChange = { fg = c.git_change },
		GitSignsDelete = { fg = c.git_delete },
		GitSignsChangedelete = { fg = c.git_change },
		GitSignsTopdelete = { fg = c.git_delete },
		GitSignsUntracked = { fg = c.git_untracked },
		GitSignsAddNr = { fg = c.git_add },
		GitSignsChangeNr = { fg = c.git_change },
		GitSignsDeleteNr = { fg = c.git_delete },
		GitSignsAddLn = { link = "DiffAdd" },
		GitSignsChangeLn = { link = "DiffChange" },
		GitSignsDeleteLn = { link = "DiffDelete" },
		GitSignsAddInline = { bg = utils.blend(c.bg_solid, c.git_add, 0.3) },
		GitSignsChangeInline = { bg = utils.blend(c.bg_solid, c.git_change, 0.6) },
		GitSignsDeleteInline = { bg = utils.blend(c.bg_solid, c.git_delete, 0.3) },
		GitSignsCurrentLineBlame = { fg = c.codelens },
	}
end
