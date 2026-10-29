local M = {}

M.defaults = {
	transparent = false,
	terminal_colors = true,
	-- Merged into the matching highlight groups. Defaults follow the VS Code theme.
	styles = {
		comments = { italic = true },
		keywords = {},
		functions = {},
		variables = {},
		parameters = { italic = true },
	},
	plugins = {
		-- With lazy.nvim, skip integrations for plugins that aren't installed. Plugins are never loaded by this check.
		auto = true,
		-- Set any integration to false to disable it, e.g. `telescope = false`.
	},
	on_colors = function(colors) end,
	on_highlights = function(highlights, colors) end,
}

M.options = vim.deepcopy(M.defaults)

-- Maps options from before the styles table existed onto it.
local function migrate(opts)
	opts = vim.deepcopy(opts or {})
	opts.styles = opts.styles or {}
	if opts.italic_comments ~= nil then
		opts.styles.comments = vim.tbl_extend("force", opts.styles.comments or {}, { italic = opts.italic_comments })
	end
	if opts.italic_keywords ~= nil then
		opts.styles.keywords = vim.tbl_extend("force", opts.styles.keywords or {}, { italic = opts.italic_keywords })
	end
	if opts.bold_functions ~= nil then
		opts.styles.functions = vim.tbl_extend("force", opts.styles.functions or {}, { bold = opts.bold_functions })
	end
	if opts.plugins and opts.plugins.auto_enable ~= nil then
		opts.plugins.auto = opts.plugins.auto_enable
	end
	opts.italic_comments, opts.italic_keywords, opts.bold_functions, opts.variant, opts.languages = nil, nil, nil, nil, nil
	if opts.plugins then
		opts.plugins.auto_enable = nil
	end
	return opts
end

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), migrate(opts))
	return M.options
end

-- Options for a single load: the setup() options with `opts` layered on top.
function M.extend(opts)
	return opts and vim.tbl_deep_extend("force", M.options, migrate(opts)) or M.options
end

return M
