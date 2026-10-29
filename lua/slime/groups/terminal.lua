-- Terminal buffers. The ANSI palette is set in slime.theme.
return function(c, opts)
	return {
		TermCursor = { fg = c.bg_solid, bg = c.cursor },
		TermCursorNC = { fg = c.bg_solid, bg = c.comment },
		Terminal = { fg = c.fg, bg = c.terminal_bg },
	}
end
