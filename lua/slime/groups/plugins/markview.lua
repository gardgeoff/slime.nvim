local utils = require("slime.utils")

-- markview.nvim, using the VS Code markdown colors. Markview keeps groups that are already defined.
return function(c, opts)
	local hl = {
		MarkviewCode = { bg = c.input },
		MarkviewCodeInfo = { fg = c.md_code, bg = c.input },
		MarkviewCodeFg = { fg = c.input },
		MarkviewInlineCode = { fg = c.md_code, bg = c.input },
		MarkviewBlockQuoteDefault = { fg = c.md_quote },
		MarkviewBlockQuoteNote = { fg = c.token_info },
		MarkviewBlockQuoteOk = { fg = c.git_add },
		MarkviewBlockQuoteWarn = { fg = c.token_warn },
		MarkviewBlockQuoteError = { fg = c.token_error },
		MarkviewBlockQuoteSpecial = { fg = c.badge_active },
		MarkviewCheckboxChecked = { fg = c.git_add },
		MarkviewCheckboxUnchecked = { fg = c.comment },
		MarkviewCheckboxPending = { fg = c.token_warn },
		MarkviewCheckboxProgress = { fg = c.token_info },
		MarkviewCheckboxCancelled = { fg = c.comment },
		MarkviewCheckboxStriked = { fg = c.comment, strikethrough = true },
		MarkviewListItemMinus = { fg = c.md_bullet },
		MarkviewListItemPlus = { fg = c.md_bullet },
		MarkviewListItemStar = { fg = c.md_bullet },
		MarkviewTableHeader = { fg = c.md_heading },
		MarkviewTableBorder = { fg = c.punctuation },
		MarkviewTableAlignLeft = { fg = c.punctuation },
		MarkviewTableAlignCenter = { fg = c.punctuation },
		MarkviewTableAlignRight = { fg = c.punctuation },
		MarkviewHyperlink = { fg = c.md_link },
		MarkviewImage = { fg = c.md_link },
		MarkviewEmail = { fg = c.md_url },
	}
	-- VS Code gives every heading level the same color; markview also draws a background, so tint it.
	for level = 1, 6 do
		hl["MarkviewHeading" .. level] = { fg = c.md_heading, bg = utils.blend(c.bg_solid, c.md_heading, 0.12) }
		hl["MarkviewHeading" .. level .. "Sign"] = { fg = c.md_heading }
	end
	return hl
end
