-- mason.nvim.
return function(c, opts)
	return {
		MasonNormal = { link = "NormalFloat" },
		MasonHeader = { fg = c.list_active_fg, bg = c.button, bold = true },
		MasonHeaderSecondary = { fg = c.list_active_fg, bg = c.badge, bold = true },
		MasonHighlight = { fg = c.match },
		MasonHighlightBlock = { fg = c.list_active_fg, bg = c.button },
		MasonHighlightBlockBold = { fg = c.list_active_fg, bg = c.button, bold = true },
		MasonHighlightSecondary = { fg = c.badge_active },
		MasonHighlightBlockSecondary = { fg = c.list_active_fg, bg = c.badge },
		MasonHighlightBlockBoldSecondary = { fg = c.list_active_fg, bg = c.badge, bold = true },
		MasonHeading = { fg = c.sidebar_title, bold = true },
		MasonMuted = { fg = c.comment },
		MasonMutedBlock = { fg = c.fg, bg = c.list_inactive },
		MasonMutedBlockBold = { fg = c.fg, bg = c.list_inactive, bold = true },
		MasonLink = { fg = c.md_url, underline = true },
		MasonError = { fg = c.error },
		MasonWarning = { fg = c.warning },
	}
end
