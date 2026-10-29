-- CSS, SCSS and Less. The scss and less queries inherit css, so each capture is set for all three.
return function(c, opts)
	local hl = {}

	for _, lang in ipairs({ "css", "scss", "less" }) do
		hl["@tag." .. lang] = { fg = c.css_tag }
		hl["@type." .. lang] = { fg = c.css_class }
		hl["@constant." .. lang] = { fg = c.css_id }
		hl["@property." .. lang] = { fg = c.css_property }
		hl["@attribute." .. lang] = { fg = c.css_pseudo }
		hl["@tag.attribute." .. lang] = { fg = c.css_attribute }
		-- Values, colors and units share @string; VS Code's property value color is the common case
		hl["@string." .. lang] = { fg = c.css_value }
		hl["@character.special." .. lang] = { fg = c.css_ampersand }
		hl["@keyword.modifier." .. lang] = { fg = c.css_important }
		hl["@keyword.directive." .. lang] = { fg = c.css_at_rule }
		hl["@keyword.import." .. lang] = { fg = c.css_import }
		hl["@keyword." .. lang] = { fg = c.css_keyframe } -- from/to in @keyframes
		hl["@variable.parameter." .. lang] = { fg = c.variable }
	end

	-- SCSS at-rules
	hl["@keyword.scss"] = { fg = c.css_at_rule } -- @mixin, @extend, @use, ...
	hl["@keyword.import.scss"] = { fg = c.css_at_rule } -- @include
	hl["@keyword.function.scss"] = { fg = c.scss_function_rule }
	hl["@keyword.return.scss"] = { fg = c.scss_control }
	hl["@keyword.repeat.scss"] = { fg = c.scss_control }
	hl["@function.scss"] = { fg = c.scss_function }

	return hl
end
