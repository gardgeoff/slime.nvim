local utils = require("slime.utils")

-- JavaScript, TypeScript and TSX. VS Code's slime has rules scoped to .js or .ts that differ from the base mapping.
return function(c, opts)
	local s = opts.styles
	local hl = {}

	for _, lang in ipairs({ "javascript", "typescript", "tsx" }) do
		-- const/let/var/extends/static are storage.type in VS Code, but @keyword in treesitter
		hl["@keyword." .. lang] = utils.style({ fg = c.storage_type }, s.keywords)
		-- template literal ${ }
		hl["@punctuation.special." .. lang] = { fg = c.template_expression }
		-- new Foo(): entity.name.type.instance
		hl["@constructor." .. lang] = { fg = c.type }
		-- <Component />: support.class.component
		hl["@tag." .. lang] = { fg = c.support }
	end

	-- comment.block.documentation.js (JSDoc); TypeScript doc comments use the plain comment color
	hl["@comment.documentation.javascript"] = utils.style({ fg = c.comment_doc }, s.comments)

	for _, lang in ipairs({ "typescript", "tsx" }) do
		-- entity.name.function.ts
		local func = utils.style({ fg = c.func_ts }, s.functions)
		hl["@function." .. lang] = func
		hl["@function.call." .. lang] = func
		hl["@function.method." .. lang] = func
		hl["@function.method.call." .. lang] = func
		-- variable.parameter.ts has no rule of its own, so it falls back to `variable`
		hl["@variable.parameter." .. lang] = utils.style({ fg = c.variable }, s.variables)
		hl["@type." .. lang] = { fg = c.type } -- entity.name.type
		hl["@type.builtin." .. lang] = { fg = c.type_primitive } -- support.type.primitive.ts
		hl["@variable.builtin." .. lang] = { fg = c.this_ts } -- variable.language.this.ts
		hl["@attribute." .. lang] = { fg = c.func_ts } -- punctuation.decorator.ts
	end

	return hl
end
