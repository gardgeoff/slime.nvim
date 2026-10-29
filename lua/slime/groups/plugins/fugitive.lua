return function(c, opts)
	return {
		fugitiveHeader = { fg = c.sidebar_title, bold = true },
		fugitiveHeading = { fg = c.md_heading },
		fugitiveHash = { fg = c.constant },
		fugitiveSymbolicRef = { fg = c.func },
		fugitiveStagedHeading = { fg = c.git_add, bold = true },
		fugitiveStagedModifier = { fg = c.git_add },
		fugitiveUnstagedHeading = { fg = c.git_modified, bold = true },
		fugitiveUnstagedModifier = { fg = c.git_modified },
		fugitiveUntrackedHeading = { fg = c.git_untracked, bold = true },
		fugitiveUntrackedModifier = { fg = c.git_untracked },
		fugitiveCount = { fg = c.number },
	}
end
