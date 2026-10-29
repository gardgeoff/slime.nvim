-- dashboard-nvim. VS Code has no equivalent screen; colors come from the welcome page's accents.
return function(c, opts)
	return {
		DashboardHeader = { fg = c.storage_type },
		DashboardFooter = { fg = c.comment, italic = true },
		DashboardDesc = { fg = c.fg },
		DashboardKey = { fg = c.match, bold = true },
		DashboardIcon = { fg = c.picker_group },
		DashboardShortCut = { fg = c.control },
		DashboardShortCutIcon = { fg = c.picker_group },
		DashboardMruTitle = { fg = c.sidebar_title, bold = true },
		DashboardMruIcon = { fg = c.picker_group },
		DashboardProjectTitle = { fg = c.sidebar_title, bold = true },
		DashboardProjectTitleIcon = { fg = c.picker_group },
		DashboardProjectIcon = { fg = c.picker_group },
		DashboardFiles = { fg = c.sidebar_fg },
	}
end
