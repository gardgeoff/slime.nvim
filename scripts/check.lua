-- Headless checks for slime.nvim.
--
--   nvim --headless -u NONE --cmd "set rtp+=." -l scripts/check.lua [path/to/slime-color-theme.json]
--
-- 1. Every highlight spec uses a valid color and every link points at a defined group, with all integrations on,
--    both opaque and transparent.
-- 2. With the VS Code theme JSON, every palette value tagged `vscode:` or `scope:` equals the JSON's value.

local failures = 0
local function fail(msg)
	failures = failures + 1
	io.stderr:write("FAIL " .. msg .. "\n")
end

local function valid_color(v)
	return v == "NONE" or (type(v) == "string" and v:match("^#%x%x%x%x%x%x$") ~= nil)
end

local function check_highlights(label, opts)
	local slime = require("slime")
	slime.setup(vim.tbl_deep_extend("force", { plugins = { auto = false } }, opts))
	local ok, err = pcall(slime.load)
	if not ok then
		return fail(label .. ": load() errored: " .. err)
	end

	local config = require("slime.config").options
	local c = require("slime.colors").resolve(config)
	local hl = require("slime.theme").build(c, config)
	local count = 0
	for group, spec in pairs(hl) do
		count = count + 1
		for _, key in ipairs({ "fg", "bg", "sp" }) do
			if spec[key] ~= nil and not valid_color(spec[key]) then
				fail(("%s: %s.%s = %s"):format(label, group, key, vim.inspect(spec[key])))
			end
		end
		if spec.link and hl[spec.link] == nil and vim.fn.hlexists(spec.link) == 0 then
			fail(("%s: %s links to undefined %s"):format(label, group, spec.link))
		end
	end
	print(("%s: %d groups"):format(label, count))
end

local function normalize(hex)
	hex = hex:lower()
	if #hex == 4 then
		hex = "#" .. hex:sub(2, 2):rep(2) .. hex:sub(3, 3):rep(2) .. hex:sub(4, 4):rep(2)
	end
	return hex
end

-- VS Code applies the last rule among those with an equally specific selector.
local function scope_color(json, scope)
	local found
	for _, rule in ipairs(json.tokenColors) do
		local scopes = rule.scope
		if type(scopes) == "string" then
			scopes = vim.split(scopes, ",")
		end
		for _, s in ipairs(scopes or {}) do
			if vim.trim(s) == scope and rule.settings.foreground then
				found = rule.settings.foreground
			end
		end
	end
	return found
end

local function check_palette(json_path)
	local json = vim.json.decode(table.concat(vim.fn.readfile(json_path), "\n"))
	local palette_file = vim.api.nvim_get_runtime_file("lua/slime/palette.lua", false)[1]
	local checked = 0
	for _, line in ipairs(vim.fn.readfile(palette_file)) do
		local name, hex, kind, source = line:match('^%s*([%w_]+) = "(#%x+)", %-%- (%a+): (.-)%s*$')
		if name and (kind == "vscode" or kind == "scope") then
			source = source:gsub("%s*%(.*%)$", "")
			local expected = kind == "vscode" and json.colors[source] or scope_color(json, source)
			checked = checked + 1
			if not expected then
				fail(("palette.%s: %s '%s' not found in JSON"):format(name, kind, source))
			elseif normalize(expected) ~= normalize(hex) then
				fail(("palette.%s = %s, JSON %s '%s' = %s"):format(name, hex, kind, source, expected))
			end
		end
	end
	print(("palette: %d values checked against %s"):format(checked, json_path))
end

check_highlights("default", {})
check_highlights("transparent", { transparent = true })

local json_path = _G.arg and _G.arg[1]
if json_path then
	check_palette(json_path)
else
	print("palette: skipped (no VS Code JSON path given)")
end

if failures > 0 then
	io.stderr:write(failures .. " failure(s)\n")
	vim.cmd("cquit 1")
end
print("ok")
