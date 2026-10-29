local utils = require("slime.utils")

-- PHP. Applied to both the `php` (with HTML) and `php_only` parsers.
return function(c, opts)
	local s = opts.styles
	local hl = {}

	for _, lang in ipairs({ "php", "php_only" }) do
		-- keyword.control.php
		hl["@keyword.conditional." .. lang] = utils.style({ fg = c.control_php }, s.keywords)
		hl["@keyword.repeat." .. lang] = utils.style({ fg = c.control_php }, s.keywords)
		hl["@keyword.return." .. lang] = utils.style({ fg = c.control_php }, s.keywords)
		-- use/namespace are keyword.other
		hl["@keyword.import." .. lang] = utils.style({ fg = c.keyword }, s.keywords)
		-- $params are variable.other.php, without the JS parameter rule
		hl["@variable.parameter." .. lang] = utils.style({ fg = c.variable }, s.variables)
		hl["@property." .. lang] = { fg = c.variable }
		-- true/false/null are constant.language.php
		hl["@boolean." .. lang] = { fg = c.constant }
		hl["@constant.builtin." .. lang] = { fg = c.constant }
		-- class references are support.class.php
		hl["@type." .. lang] = { fg = c.support }
		hl["@constructor." .. lang] = { fg = c.support }
		hl["@module." .. lang] = { fg = c.type } -- entity.name.type.namespace.php
	end

	return hl
end
