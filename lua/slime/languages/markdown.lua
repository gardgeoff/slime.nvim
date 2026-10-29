-- Markdown. Most markdown colors are the base @markup.* groups.
return function(c, opts)
	return {
		["@label.markdown"] = { fg = c.md_code }, -- fenced code block language
	}
end
