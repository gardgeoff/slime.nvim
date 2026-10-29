-- Bufferline, styled after VS Code's editor tabs.
return function(c, opts)
	return {
		-- Referenced by name from bufferline's config: { attribute = 'bg', highlight = 'BufferlineInactive' }
		BufferlineInactive = { fg = c.tab_inactive_fg, bg = c.tab_inactive },
		-- Muted text on the statusline background, used for the neo-tree offset title
		StatusLineComment = { fg = c.statusbar_fg, bg = c.statusbar },
	}
end
