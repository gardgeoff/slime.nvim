return function(c, opts)
	return {
		Search = { bg = c.find_match_highlight }, -- editor.findMatchHighlightBackground
		CurSearch = { bg = c.find_match }, -- editor.findMatchBackground
		IncSearch = { link = "CurSearch" },
		Substitute = { bg = c.find_range }, -- editor.findRangeHighlightBackground

		qfLineNr = { fg = c.line_nr_active },
		qfFileName = { fg = c.func },
	}
end
