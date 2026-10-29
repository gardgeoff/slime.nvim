return function(c, opts)
	return {
		Floaterm = { fg = c.fg, bg = c.terminal_bg },
		FloatermNC = { link = "Floaterm" },
		FloatermBorder = { fg = c.float_border, bg = c.terminal_bg },
		FloatermTitle = { fg = c.picker_group, bg = c.terminal_bg },
	}
end
