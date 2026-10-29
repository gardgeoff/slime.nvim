-- The VS Code theme doesn't enable semantic highlighting, so VS Code colors purely by TextMate scope.
-- Semantic token groups that would only repeat (or fight) treesitter are cleared so treesitter shows through;
-- the rest carry distinctions treesitter can't make, mapped to the scope VS Code would use.
return function(c, opts)
	local hl = {
		["@lsp.type.class"] = { fg = c.class },
		["@lsp.type.decorator"] = { link = "@attribute" },
		["@lsp.type.enum"] = { fg = c.type },
		["@lsp.type.enumMember"] = { fg = c.constant },
		["@lsp.type.interface"] = { fg = c.type },
		["@lsp.type.namespace"] = { fg = c.support },
		["@lsp.type.type"] = { fg = c.type },
		["@lsp.type.typeParameter"] = { fg = c.type_param },
		["@lsp.mod.deprecated"] = { strikethrough = true },

		-- Document highlights
		LspReferenceText = { bg = c.selection_highlight },
		LspReferenceRead = { bg = c.word_highlight },
		LspReferenceWrite = { bg = c.word_highlight },
		LspReferenceTarget = { link = "LspReferenceText" },

		-- LSP UI
		LspSignatureActiveParameter = { fg = c.match, bold = true },
		LspCodeLens = { fg = c.codelens },
		LspCodeLensSeparator = { fg = c.codelens },
		LspInlayHint = { fg = c.codelens },
		LspInfoBorder = { link = "FloatBorder" },
	}

	for _, token in ipairs({
		"comment",
		"function",
		"keyword",
		"method",
		"macro",
		"modifier",
		"number",
		"operator",
		"parameter",
		"property",
		"regexp",
		"string",
		"struct",
		"variable",
	}) do
		hl["@lsp.type." .. token] = {}
	end

	return hl
end
