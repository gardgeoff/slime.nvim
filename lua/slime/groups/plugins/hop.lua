return function(c, opts)
	return {
		HopNextKey = { fg = c.match, bold = true },
		HopNextKey1 = { fg = c.storage_type, bold = true },
		HopNextKey2 = { fg = c.string },
		HopUnmatched = { fg = c.comment },
	}
end
