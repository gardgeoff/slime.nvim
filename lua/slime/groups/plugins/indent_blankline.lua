-- indent-blankline v3, using VS Code's indent guide colors.
return function(c, opts)
	return {
		IblIndent = { fg = c.indent },
		IblWhitespace = { fg = c.whitespace },
		IblScope = { fg = c.indent_active },
	}
end
