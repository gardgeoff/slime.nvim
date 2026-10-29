return function(c, opts)
	local levels = {
		Error = c.error, -- editorError.foreground
		Warn = c.warning, -- editorWarning.foreground
		Info = c.token_info,
		Hint = c.hint,
		Ok = c.git_add,
	}

	local hl = {
		DiagnosticUnnecessary = { fg = c.comment },
		DiagnosticDeprecated = { strikethrough = true },
	}
	for level, color in pairs(levels) do
		hl["Diagnostic" .. level] = { fg = color }
		hl["DiagnosticUnderline" .. level] = { sp = color, undercurl = true }
		hl["DiagnosticVirtualText" .. level] = { fg = color }
		hl["DiagnosticVirtualLines" .. level] = { fg = color }
		hl["DiagnosticFloating" .. level] = { fg = color }
		hl["DiagnosticSign" .. level] = { fg = color }
	end
	return hl
end
