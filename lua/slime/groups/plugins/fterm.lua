return function(c, opts)
	return {
		FTerm = { fg = c.fg, bg = c.terminal_bg },
		FTermBorder = { fg = c.float_border, bg = c.terminal_bg },
	}
end
