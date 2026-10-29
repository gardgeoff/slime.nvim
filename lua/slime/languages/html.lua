-- HTML.
return function(c, opts)
	return {
		["@string.html"] = { fg = c.attribute_value }, -- string.quoted.double.html
		["@constant.html"] = { fg = c.doctype }, -- meta.tag.sgml.doctype.html
	}
end
