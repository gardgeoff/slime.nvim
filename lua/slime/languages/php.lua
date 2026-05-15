local utils = require("slime.utils")
local M = {}

function M.setup(colors, config)

    -- PHP treesitter
    utils.highlight("@keyword.function.php",         { fg = colors.declaration },           config)
    utils.highlight("@keyword.php",                  { fg = colors.keyword },               config)
    utils.highlight("@function.php",                 { fg = colors.func },                  config)
    utils.highlight("@function.method.php",          { fg = colors.method },                config)
    utils.highlight("@function.method.call.php",     { fg = colors.method },                config)
    utils.highlight("@variable.member.php",          { fg = colors.property },              config)
    utils.highlight("@variable.parameter.php",       { fg = colors.fg, italic = true },     config)
    utils.highlight("@type.php",                     { fg = colors.type },                  config)

    -- Blade
    utils.highlight("@keyword.blade",                { fg = colors.keyword },               config)
    utils.highlight("@keyword.directive.blade",      { fg = colors.keyword, bold = true },  config)
    utils.highlight("@function.blade",               { fg = colors.func },                  config)
    utils.highlight("@function.method.blade",        { fg = colors.method },                config)
    utils.highlight("@variable.member.blade",        { fg = colors.property },              config)
    utils.highlight("@string.blade",                 { fg = colors.string },                config)
    utils.highlight("@tag.blade",                    { fg = colors.tag },                   config)

end

return M
