local M = {}

-- Core groups, always applied, in order.
M.core = { "editor", "syntax", "treesitter", "lsp", "diagnostics", "git", "search", "terminal" }

-- Language-specific treesitter overrides, applied last.
M.languages = { "javascript", "php", "html", "css", "markdown" }

-- Plugin integrations: config key -> lazy.nvim plugin name.
M.plugins = {
	bufferline = "bufferline.nvim",
	cmp = "nvim-cmp",
	dashboard = "dashboard-nvim",
	flash = "flash.nvim",
	floaterm = "vim-floaterm",
	fterm = "FTerm.nvim",
	fugitive = "vim-fugitive",
	gitsigns = "gitsigns.nvim",
	hop = "hop.nvim",
	illuminate = "vim-illuminate",
	indent_blankline = "indent-blankline.nvim",
	lazy = "lazy.nvim",
	leap = "leap.nvim",
	markview = "markview.nvim",
	mason = "mason.nvim",
	neotree = "neo-tree.nvim",
	rainbow = "rainbow-delimiters.nvim",
	telescope = "telescope.nvim",
	toggleterm = "toggleterm.nvim",
	window_picker = "nvim-window-picker",
}

-- Installed plugin names from lazy.nvim's spec, or nil when lazy.nvim isn't managing plugins.
-- Reads the spec only: nothing is required from the plugins themselves, so lazy-loading is preserved.
local function installed_plugins()
	if not package.loaded["lazy"] then
		return nil
	end
	local ok, lazy_config = pcall(require, "lazy.core.config")
	if not ok or type(lazy_config.plugins) ~= "table" then
		return nil
	end
	local installed = { ["lazy.nvim"] = true }
	for name in pairs(lazy_config.plugins) do
		installed[name] = true
	end
	return installed
end

function M.enabled_plugins(opts)
	local installed = opts.plugins.auto and installed_plugins() or nil
	local names = {}
	for name, lazy_name in pairs(M.plugins) do
		local enabled = opts.plugins[name]
		if enabled == nil then
			enabled = installed == nil or installed[lazy_name] == true
		end
		if enabled then
			table.insert(names, name)
		end
	end
	table.sort(names)
	return names
end

return M
