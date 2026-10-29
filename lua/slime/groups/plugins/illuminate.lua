-- vim-illuminate, matching VS Code's word highlight.
return function(c, opts)
	return {
		IlluminatedWordText = { link = "LspReferenceText" },
		IlluminatedWordRead = { link = "LspReferenceRead" },
		IlluminatedWordWrite = { link = "LspReferenceWrite" },
	}
end
