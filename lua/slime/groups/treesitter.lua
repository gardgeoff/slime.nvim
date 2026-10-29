local utils = require("slime.utils")

-- Base treesitter captures. Each maps to the TextMate scope VS Code's slime colors for the same token;
-- per-language differences live in slime/languages/.
return function(c, opts)
	local s = opts.styles
	return {
		-- Comments
		["@comment"] = utils.style({ fg = c.comment }, s.comments),
		["@comment.documentation"] = utils.style({ fg = c.comment }, s.comments),
		["@comment.error"] = { fg = c.token_error, bold = true },
		["@comment.warning"] = { fg = c.token_warn, bold = true },
		["@comment.todo"] = { fg = c.token_warn, bold = true },
		["@comment.note"] = { fg = c.token_info, bold = true },

		-- Variables
		["@variable"] = utils.style({ fg = c.variable }, s.variables),
		["@variable.builtin"] = { fg = c.variable },
		["@variable.parameter"] = utils.style({ fg = c.parameter }, s.parameters),
		["@variable.parameter.builtin"] = utils.style({ fg = c.parameter }, s.parameters),
		["@variable.member"] = { fg = c.variable },
		["@property"] = { fg = c.object_key },

		-- Constants and literals
		["@constant"] = { fg = c.constant },
		["@constant.builtin"] = { fg = c.boolean },
		["@constant.macro"] = { fg = c.constant },
		["@boolean"] = { fg = c.boolean },
		["@number"] = { fg = c.number },
		["@number.float"] = { fg = c.number },
		["@character"] = { fg = c.constant_other },
		["@character.special"] = { fg = c.constant_other },
		["@string"] = { fg = c.string },
		["@string.documentation"] = { fg = c.string },
		["@string.escape"] = { fg = c.escape },
		["@string.regexp"] = { fg = c.escape },
		["@string.special"] = { fg = c.escape },
		["@string.special.symbol"] = { fg = c.string },
		["@string.special.url"] = { fg = c.md_url, underline = true },
		["@string.special.path"] = { fg = c.string },

		-- Functions
		["@function"] = utils.style({ fg = c.func }, s.functions),
		["@function.builtin"] = utils.style({ fg = c.func }, s.functions),
		["@function.call"] = utils.style({ fg = c.func }, s.functions),
		["@function.macro"] = utils.style({ fg = c.func }, s.functions),
		["@function.method"] = utils.style({ fg = c.func }, s.functions),
		["@function.method.call"] = utils.style({ fg = c.func }, s.functions),
		["@constructor"] = { fg = c.class },

		-- Keywords: VS Code splits these by TextMate scope
		["@keyword"] = utils.style({ fg = c.keyword }, s.keywords), -- keyword
		["@keyword.conditional"] = utils.style({ fg = c.control }, s.keywords), -- keyword.control
		["@keyword.repeat"] = utils.style({ fg = c.control }, s.keywords),
		["@keyword.exception"] = utils.style({ fg = c.control }, s.keywords),
		["@keyword.debug"] = utils.style({ fg = c.control }, s.keywords),
		["@keyword.return"] = utils.style({ fg = c.control_flow }, s.keywords), -- keyword.control.flow
		["@keyword.coroutine"] = utils.style({ fg = c.control_flow }, s.keywords),
		["@keyword.import"] = utils.style({ fg = c.control_flow }, s.keywords), -- keyword.control.import
		["@keyword.function"] = utils.style({ fg = c.storage_type }, s.keywords), -- storage.type
		["@keyword.type"] = utils.style({ fg = c.storage_type }, s.keywords),
		["@keyword.modifier"] = utils.style({ fg = c.modifier }, s.keywords), -- storage.modifier
		["@keyword.operator"] = { fg = c.operator }, -- keyword.operator
		["@keyword.conditional.ternary"] = { fg = c.punctuation }, -- keyword.operator.ternary
		["@keyword.directive"] = { fg = c.storage_type },
		["@keyword.directive.define"] = { fg = c.storage_type },

		-- Operators and punctuation
		["@operator"] = { fg = c.operator },
		["@punctuation.delimiter"] = { fg = c.punctuation },
		["@punctuation.bracket"] = { fg = c.punctuation },
		["@punctuation.special"] = { fg = c.punctuation },

		-- Types
		["@type"] = { fg = c.class }, -- entity.name.class
		["@type.builtin"] = { fg = c.support }, -- support.type
		["@type.definition"] = { fg = c.class },
		["@module"] = { fg = c.support },
		["@module.builtin"] = { fg = c.support },
		["@label"] = { fg = c.control },
		["@attribute"] = { fg = c.func },
		["@attribute.builtin"] = { fg = c.func },

		-- Markup tags (HTML, JSX, XML)
		["@tag"] = { fg = c.tag },
		["@tag.builtin"] = { fg = c.tag },
		["@tag.attribute"] = { fg = c.attribute },
		["@tag.delimiter"] = { fg = c.tag_punctuation },

		-- Markup (follows the VS Code markdown rules)
		["@markup.strong"] = { fg = c.md_bold },
		["@markup.italic"] = { fg = c.md_italic, italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.heading"] = { fg = c.md_heading },
		["@markup.quote"] = { fg = c.md_quote },
		["@markup.math"] = { fg = c.number },
		["@markup.link"] = { fg = c.punctuation },
		["@markup.link.label"] = { fg = c.md_link },
		["@markup.link.url"] = { fg = c.md_url, underline = true },
		["@markup.raw"] = { fg = c.md_code },
		["@markup.raw.block"] = { fg = c.md_code },
		["@markup.list"] = { fg = c.md_bullet },
		["@markup.list.checked"] = { fg = c.md_bullet },
		["@markup.list.unchecked"] = { fg = c.md_bullet },

		-- Diff
		["@diff.plus"] = { fg = c.git_add },
		["@diff.minus"] = { fg = c.git_delete },
		["@diff.delta"] = { fg = c.git_modified },

		-- Legacy capture names (nvim-treesitter before the 2024 rename)
		["@method"] = { link = "@function.method" },
		["@method.call"] = { link = "@function.method.call" },
		["@field"] = { link = "@variable.member" },
		["@parameter"] = { link = "@variable.parameter" },
		["@namespace"] = { link = "@module" },
		["@keyword.storage"] = { link = "@keyword.modifier" },
		["@type.qualifier"] = { link = "@keyword.modifier" },
		["@text.literal"] = { link = "@markup.raw" },
		["@text.uri"] = { link = "@markup.link.url" },
	}
end
