return function(c, opts)
	return {
		ToggleTerm = { fg = c.fg, bg = c.terminal_bg },
		ToggleTermBorder = { fg = c.float_border, bg = c.terminal_bg },
	}
end
