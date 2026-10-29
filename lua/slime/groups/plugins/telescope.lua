-- Telescope, styled after VS Code's quick open: input box over a widget-colored list.
-- Like quick open, panels have no visible border: each border is drawn in its panel's background color.
return function(c, opts)
	-- With transparent panels ("NONE"), hide border characters against the editor background instead.
	local function hidden(bg)
		return bg == "NONE" and c.bg_solid or bg
	end

	return {
		TelescopeNormal = { fg = c.fg, bg = c.float },
		TelescopeBorder = { fg = hidden(c.float), bg = c.float },
		TelescopeTitle = { fg = c.picker_group, bg = c.float, bold = true },
		TelescopePromptNormal = { fg = c.input_fg, bg = c.input },
		TelescopePromptBorder = { fg = c.input, bg = c.input },
		TelescopePromptTitle = { fg = c.sidebar_title, bg = c.input, bold = true },
		TelescopePromptPrefix = { fg = c.picker_group, bg = c.input },
		TelescopePromptCounter = { fg = c.codelens, bg = c.input },
		TelescopeResultsNormal = { link = "TelescopeNormal" },
		TelescopeResultsBorder = { link = "TelescopeBorder" },
		TelescopeResultsTitle = { link = "TelescopeTitle" },
		TelescopePreviewNormal = { fg = c.fg, bg = c.bg },
		TelescopePreviewBorder = { fg = hidden(c.bg), bg = c.bg },
		TelescopePreviewTitle = { fg = c.picker_group, bg = c.bg, bold = true },
		TelescopePreviewLine = { bg = c.range },
		TelescopeSelection = { fg = c.list_active_fg, bg = c.list_active },
		TelescopeSelectionCaret = { fg = c.match, bg = c.list_active },
		TelescopeMultiSelection = { fg = c.match },
		TelescopeMultiIcon = { fg = c.match },
		TelescopeMatching = { fg = c.match, bold = true },
		TelescopeResultsComment = { fg = c.comment },
		TelescopeResultsLineNr = { fg = c.line_nr_active },
		TelescopeResultsDiffAdd = { fg = c.git_add },
		TelescopeResultsDiffChange = { fg = c.git_modified },
		TelescopeResultsDiffDelete = { fg = c.git_delete },
	}
end
