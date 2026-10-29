-- lazy.nvim UI.
return function(c, opts)
	return {
		LazyNormal = { link = "NormalFloat" },
		LazyH1 = { fg = c.list_active_fg, bg = c.button, bold = true },
		LazyH2 = { fg = c.sidebar_title, bold = true },
		LazyButton = { fg = c.fg, bg = c.list_inactive },
		LazyButtonActive = { fg = c.list_active_fg, bg = c.button, bold = true },
		LazySpecial = { fg = c.match },
		LazyComment = { fg = c.comment },
		LazyDimmed = { fg = c.comment },
		LazyProp = { fg = c.comment },
		LazyValue = { fg = c.string },
		LazyUrl = { fg = c.md_url, underline = true },
		LazyCommit = { fg = c.constant },
		LazyCommitType = { fg = c.storage_type },
		LazyCommitScope = { fg = c.func, italic = true },
		LazyReasonPlugin = { fg = c.variable },
		LazyReasonEvent = { fg = c.control },
		LazyReasonKeys = { fg = c.string },
		LazyReasonCmd = { fg = c.func },
		LazyReasonFt = { fg = c.class },
		LazyReasonStart = { fg = c.git_add },
		LazyProgressDone = { fg = c.badge_active },
		LazyProgressTodo = { fg = c.whitespace },
	}
end
