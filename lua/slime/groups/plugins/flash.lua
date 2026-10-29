return function(c, opts)
	return {
		FlashMatch = { bg = c.find_match_highlight },
		FlashCurrent = { bg = c.find_match },
		FlashLabel = { fg = c.bg_solid, bg = c.match, bold = true },
		FlashPrompt = { link = "NormalFloat" },
		FlashPromptIcon = { fg = c.picker_group },
		FlashBackdrop = { fg = c.comment },
	}
end
