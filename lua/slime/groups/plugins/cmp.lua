-- nvim-cmp (and lspkind, which uses the same CmpItemKind groups), styled after VS Code's suggest widget.
return function(c, opts)
	local hl = {
		CmpItemAbbr = { fg = c.fg },
		CmpItemAbbrDeprecated = { fg = c.comment, strikethrough = true },
		CmpItemAbbrMatch = { fg = c.match, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.match },
		CmpItemMenu = { fg = c.codelens },
		CmpItemKind = { fg = c.func },
		CmpDocumentation = { link = "NormalFloat" },
		CmpDocumentationBorder = { link = "FloatBorder" },
	}

	-- Each completion kind takes the color its token has in the editor.
	local kinds = {
		Text = c.fg,
		Method = c.func,
		Function = c.func,
		Constructor = c.class,
		Field = c.variable,
		Property = c.variable,
		Variable = c.variable,
		Reference = c.variable,
		Class = c.class,
		Struct = c.class,
		Interface = c.type,
		Enum = c.type,
		TypeParameter = c.type_param,
		Module = c.support,
		EnumMember = c.constant,
		Constant = c.constant,
		Unit = c.number,
		Value = c.number,
		Keyword = c.keyword,
		Operator = c.operator,
		Event = c.control,
		Snippet = c.storage_type,
		Color = c.css_value,
		File = c.sidebar_fg,
		Folder = c.sidebar_fg,
		Copilot = c.attribute,
	}
	for kind, color in pairs(kinds) do
		hl["CmpItemKind" .. kind] = { fg = color }
	end
	return hl
end
