-- rainbow-delimiters. The VS Code theme has no bracket pair colors; these cycle through its syntax colors.
return function(c, opts)
	local hl = {}
	for i, name in ipairs({ "Yellow", "Violet", "Blue", "Orange", "Green", "Red", "Cyan" }) do
		hl["RainbowDelimiter" .. name] = { fg = c.rainbow[i] }
	end
	return hl
end
