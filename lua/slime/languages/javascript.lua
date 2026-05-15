local utils = require("slime.utils")
local M = {}

function M.setup(colors, config)

    -- Treesitter (current group names, post-0.9)
    utils.highlight("@keyword.function.javascript",      { fg = colors.declaration },            config)
    utils.highlight("@keyword.function.typescript",      { fg = colors.declaration },            config)
    utils.highlight("@function.javascript",              { fg = colors.func },                   config)
    utils.highlight("@function.typescript",              { fg = colors.func },                   config)
    utils.highlight("@function.method.javascript",       { fg = colors.method },                 config)
    utils.highlight("@function.method.typescript",       { fg = colors.method },                 config)
    utils.highlight("@function.method.call.javascript",  { fg = colors.method },                 config)
    utils.highlight("@function.method.call.typescript",  { fg = colors.method },                 config)
    utils.highlight("@variable.member.javascript",       { fg = colors.property },               config)
    utils.highlight("@variable.member.typescript",       { fg = colors.property },               config)
    utils.highlight("@variable.parameter.javascript",    { fg = colors.fg, italic = true },      config)
    utils.highlight("@variable.parameter.typescript",    { fg = colors.fg, italic = true },      config)
    utils.highlight("@type.javascript",                  { fg = colors.type },                   config)
    utils.highlight("@type.typescript",                  { fg = colors.type },                   config)
    utils.highlight("@constructor.javascript",           { fg = colors.type },                   config)
    utils.highlight("@constructor.typescript",           { fg = colors.type },                   config)
    utils.highlight("@string.template.javascript",       { fg = colors.string },                 config)
    utils.highlight("@string.template.typescript",       { fg = colors.string },                 config)
    utils.highlight("@punctuation.special.javascript",   { fg = colors.accent2 },                config)
    utils.highlight("@punctuation.special.typescript",   { fg = colors.accent2 },                config)

    -- JSX/TSX
    utils.highlight("@tag.jsx",                          { fg = colors.declaration },            config)
    utils.highlight("@tag.tsx",                          { fg = colors.declaration },            config)
    utils.highlight("@tag.attribute.jsx",                { fg = colors.property },               config)
    utils.highlight("@tag.attribute.tsx",                { fg = colors.property },               config)
    utils.highlight("@tag.delimiter.jsx",                { fg = colors.operator },               config)
    utils.highlight("@tag.delimiter.tsx",                { fg = colors.operator },               config)

    -- LSP overrides: JS-specific deviations from lsp.lua defaults
    -- (tsserver emits these; none needed currently unless you want per-language LSP colors)

end

return M
