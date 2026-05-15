local utils = require("slime.utils")
local M = {}

function M.setup(colors, config)
	utils.highlight("@keyword", { fg = colors.keyword }, config)
	utils.highlight("@keyword.function", { fg = colors.declaration }, config)
	utils.highlight("@keyword.operator", { fg = colors.operator }, config)
	utils.highlight("@keyword.return", { fg = colors.keyword }, config)

	utils.highlight("@function", { fg = colors.func }, config)
	utils.highlight("@function.builtin", { fg = colors.keyword }, config)
	utils.highlight("@function.method", { fg = colors.method }, config)
	utils.highlight("@function.method.call", { fg = colors.method }, config)

	utils.highlight("@constructor", { fg = colors.type }, config)

	utils.highlight("@variable", { fg = colors.fg }, config)
	utils.highlight("@variable.builtin", { fg = colors.keyword }, config)
	utils.highlight("@variable.parameter", { fg = colors.fg }, config)
	utils.highlight("@variable.member", { fg = colors.property }, config)

	utils.highlight("@type", { fg = colors.type }, config)
	utils.highlight("@type.builtin", { fg = colors.type }, config)

	utils.highlight("@constant", { fg = colors.number }, config)
	utils.highlight("@constant.builtin", { fg = colors.keyword }, config)

	utils.highlight("@string", { fg = colors.string }, config)
	utils.highlight("@string.template", { fg = colors.string }, config)
	utils.highlight("@string.regexp", { fg = colors.accent2 }, config)

	utils.highlight("@number", { fg = colors.number }, config)
	utils.highlight("@boolean", { fg = colors.keyword }, config)

	utils.highlight("@operator", { fg = colors.operator }, config)
	utils.highlight("@punctuation.bracket", { fg = colors.operator }, config)
	utils.highlight("@punctuation.delimiter", { fg = colors.operator }, config)
	utils.highlight("@punctuation.special", { fg = colors.accent2 }, config)

	utils.highlight("@comment", { fg = colors.comment, italic = true }, config)

	utils.highlight("@tag", { fg = colors.declaration }, config)
	utils.highlight("@tag.builtin", { fg = colors.declaration }, config)
	utils.highlight("@tag.attribute", { fg = colors.property }, config)
	utils.highlight("@tag.delimiter", { fg = colors.operator }, config)

	utils.highlight("@lsp.type.function", { fg = colors.func }, config)
	utils.highlight("@lsp.type.method", { fg = colors.method }, config)
	utils.highlight("@lsp.type.member", { fg = colors.method }, config)
	utils.highlight("@lsp.type.property", { fg = colors.property }, config)
	utils.highlight("@lsp.type.variable", { fg = colors.fg }, config)
	utils.highlight("@lsp.type.parameter", { fg = colors.fg }, config)
	utils.highlight("@lsp.type.class", { fg = colors.type }, config)
	utils.highlight("@lsp.type.interface", { fg = colors.type }, config)
	utils.highlight("@lsp.type.enum", { fg = colors.type }, config)
	utils.highlight("@lsp.type.enumMember", { fg = colors.property }, config)
	utils.highlight("@lsp.type.namespace", { fg = colors.type }, config)
	utils.highlight("@lsp.type.decorator", { fg = colors.accent2 }, config)
	utils.highlight("@lsp.type.typeParameter", { fg = colors.type }, config)
	utils.highlight("@lsp.type.keyword", { fg = colors.keyword }, config)
	utils.highlight("@lsp.type.string", { fg = colors.string }, config)
	utils.highlight("@lsp.type.number", { fg = colors.number }, config)
	utils.highlight("@lsp.type.operator", { fg = colors.operator }, config)
	utils.highlight("@lsp.type.comment", { fg = colors.comment }, config)

	utils.highlight("@lsp.mod.readonly", { bold = true }, config)
	utils.highlight("@lsp.mod.static", { bold = true }, config)
	utils.highlight("@lsp.mod.deprecated", { strikethrough = true }, config)
end

return M
