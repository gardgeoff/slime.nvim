return function(c, opts)
	return {
		-- Basic editor elements
		Normal = { fg = c.fg, bg = c.bg },
		NormalNC = { link = "Normal" },
		NormalFloat = { fg = c.fg, bg = c.float },
		FloatBorder = { fg = c.float_border, bg = c.float },
		FloatTitle = { fg = c.sidebar_title, bg = c.float, bold = true },
		FloatFooter = { fg = c.codelens, bg = c.float },
		Cursor = { fg = c.bg_solid, bg = c.cursor },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = c.line },
		CursorColumn = { bg = c.line },
		ColorColumn = { bg = c.line },
		CursorLineNr = { fg = c.line_nr_active },
		LineNr = { fg = c.line_nr },
		Visual = { bg = c.selection },
		VisualNOS = { link = "Visual" },
		Conceal = { fg = c.comment },

		-- Gutter, splits and windows
		SignColumn = { bg = c.bg },
		FoldColumn = { fg = c.comment, bg = c.bg },
		Folded = { fg = c.comment, bg = c.line },
		WinSeparator = { fg = c.border },
		VertSplit = { link = "WinSeparator" },
		EndOfBuffer = { fg = c.whitespace },
		WinBar = { fg = c.breadcrumb },
		WinBarNC = { link = "WinBar" },

		-- Status, tab and command line
		StatusLine = { fg = c.statusbar_fg, bg = c.statusbar },
		StatusLineNC = { fg = c.statusbar_fg, bg = c.statusbar },
		TabLine = { fg = c.tab_inactive_fg, bg = c.tab_inactive },
		TabLineSel = { fg = c.fg_editor, bg = c.tab_active },
		TabLineFill = { bg = c.tab_inactive },
		MsgArea = { fg = c.fg },
		ModeMsg = { fg = c.fg, bold = true },
		MoreMsg = { fg = c.picker_group },
		Question = { fg = c.picker_group },
		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },

		-- Popup menu (VS Code suggest widget)
		Pmenu = { fg = c.fg, bg = c.float },
		PmenuSel = { fg = c.list_active_fg, bg = c.float_selected },
		PmenuKind = { fg = c.func, bg = c.float },
		PmenuKindSel = { fg = c.func, bg = c.float_selected },
		PmenuExtra = { fg = c.codelens, bg = c.float },
		PmenuExtraSel = { fg = c.codelens, bg = c.float_selected },
		PmenuMatch = { fg = c.match, bg = c.float, bold = true },
		PmenuMatchSel = { fg = c.match, bg = c.float_selected, bold = true },
		PmenuSbar = { bg = c.scrollbar },
		PmenuThumb = { bg = c.scrollbar_active },
		WildMenu = { link = "PmenuSel" },

		-- Brackets, whitespace, misc
		MatchParen = { bg = c.bracket_match, sp = c.bracket_match_border, underline = true },
		Whitespace = { fg = c.whitespace },
		NonText = { fg = c.whitespace },
		SpecialKey = { fg = c.whitespace },
		Directory = { fg = c.sidebar_fg },
		Title = { fg = c.md_heading, bold = true },
		QuickFixLine = { bg = c.range },
		SnippetTabstop = { bg = c.find_range },

		-- Spelling
		SpellBad = { sp = c.error, undercurl = true },
		SpellCap = { sp = c.warning, undercurl = true },
		SpellLocal = { sp = c.token_info, undercurl = true },
		SpellRare = { sp = c.hint, undercurl = true },

		-- Health check
		healthError = { fg = c.error },
		healthSuccess = { fg = c.git_add },
		healthWarning = { fg = c.warning },
	}
end
