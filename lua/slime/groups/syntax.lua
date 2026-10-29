local utils = require("slime.utils")

-- Legacy (:syntax) groups. Treesitter groups mostly link back to these through Neovim's defaults.
return function(c, opts)
	local s = opts.styles
	return {
		Comment = utils.style({ fg = c.comment }, s.comments),
		SpecialComment = { fg = c.comment },
		Todo = { fg = c.token_warn, bold = true },

		Constant = { fg = c.constant },
		String = { fg = c.string },
		Character = { fg = c.constant_other },
		Number = { fg = c.number },
		Float = { link = "Number" },
		Boolean = { fg = c.boolean },

		Identifier = utils.style({ fg = c.variable }, s.variables),
		Function = utils.style({ fg = c.func }, s.functions),

		Statement = utils.style({ fg = c.keyword }, s.keywords),
		Keyword = utils.style({ fg = c.keyword }, s.keywords),
		Conditional = utils.style({ fg = c.control }, s.keywords),
		Repeat = utils.style({ fg = c.control }, s.keywords),
		Exception = utils.style({ fg = c.control }, s.keywords),
		Label = { fg = c.control },
		Operator = { fg = c.operator },

		PreProc = { fg = c.storage_type },
		Include = { fg = c.control_flow },
		Define = { fg = c.storage_type },
		Macro = { fg = c.storage_type },
		PreCondit = { fg = c.storage_type },

		Type = { fg = c.class },
		StorageClass = { fg = c.modifier },
		Structure = { fg = c.storage_type },
		Typedef = { fg = c.storage_type },

		Special = { fg = c.escape },
		SpecialChar = { fg = c.escape },
		Tag = { fg = c.tag },
		Delimiter = { fg = c.punctuation },
		Debug = { fg = c.token_debug },

		Underlined = { underline = true },
		Ignore = { fg = c.comment },
		Error = { fg = c.invalid, bg = c.error },

		Added = { fg = c.git_add },
		Changed = { fg = c.git_modified },
		Removed = { fg = c.git_delete },
	}
end
