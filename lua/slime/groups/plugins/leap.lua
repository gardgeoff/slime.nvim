return function(c, opts)
	return {
		LeapMatch = { fg = c.match, bold = true },
		LeapLabel = { fg = c.bg_solid, bg = c.match, bold = true },
		LeapLabelPrimary = { link = "LeapLabel" },
		LeapLabelSecondary = { fg = c.bg_solid, bg = c.string },
		LeapBackdrop = { fg = c.comment },
	}
end
