local M = {}

function M.hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return {
		r = tonumber(hex:sub(1, 2), 16),
		g = tonumber(hex:sub(3, 4), 16),
		b = tonumber(hex:sub(5, 6), 16),
	}
end

function M.rgb_to_hex(rgb)
	return string.format("#%02x%02x%02x", rgb.r, rgb.g, rgb.b)
end

-- amount: 0-1, where 0 is color1 and 1 is color2
function M.blend(hex1, hex2, amount)
	local rgb1 = M.hex_to_rgb(hex1)
	local rgb2 = M.hex_to_rgb(hex2)

	return M.rgb_to_hex({
		r = math.floor(rgb1.r + (rgb2.r - rgb1.r) * amount + 0.5),
		g = math.floor(rgb1.g + (rgb2.g - rgb1.g) * amount + 0.5),
		b = math.floor(rgb1.b + (rgb2.b - rgb1.b) * amount + 0.5),
	})
end

-- Flattens a VS Code "#RRGGBBAA" color onto `base` the way VS Code composites it.
-- Six digit colors are returned unchanged.
function M.alpha(hex, base)
	if #hex ~= 9 then
		return hex
	end
	local a = tonumber(hex:sub(8, 9), 16) / 255
	return M.blend(base, hex:sub(1, 7), a)
end

-- Merges a style table (e.g. config.styles.comments) into a highlight spec.
function M.style(spec, style)
	return vim.tbl_extend("force", spec, style or {})
end

return M
