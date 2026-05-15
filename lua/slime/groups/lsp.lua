local utils = require("slime.utils")
local M = {}

function M.setup(colors, config)

    -- Semantic token types
    utils.highlight("@lsp.type.class",          { fg = colors.type },                    config)
    utils.highlight("@lsp.type.decorator",      { fg = colors.accent2 },                 config)
    utils.highlight("@lsp.type.enum",           { fg = colors.type },                    config)
    utils.highlight("@lsp.type.enumMember",     { fg = colors.property },                config)
    utils.highlight("@lsp.type.function",       { fg = colors.func },                    config)
    utils.highlight("@lsp.type.interface",      { fg = colors.type },                    config)
    utils.highlight("@lsp.type.macro",          { fg = colors.declaration },             config)
    utils.highlight("@lsp.type.method",         { fg = colors.method },                  config)
    utils.highlight("@lsp.type.member",         { fg = colors.method },                  config)
    utils.highlight("@lsp.type.namespace",      { fg = colors.type },                    config)
    utils.highlight("@lsp.type.parameter",      { fg = colors.fg, italic = true },       config)
    utils.highlight("@lsp.type.property",       { fg = colors.property },                config)
    utils.highlight("@lsp.type.struct",         { fg = colors.type },                    config)
    utils.highlight("@lsp.type.type",           { fg = colors.type },                    config)
    utils.highlight("@lsp.type.typeParameter",  { fg = colors.type },                    config)
    utils.highlight("@lsp.type.variable",       { fg = colors.property },                      config)
    utils.highlight("@lsp.type.keyword",        { fg = colors.keyword },                 config)
    utils.highlight("@lsp.type.string",         { fg = colors.string },                  config)
    utils.highlight("@lsp.type.number",         { fg = colors.number },                  config)
    utils.highlight("@lsp.type.operator",       { fg = colors.operator },                config)
    utils.highlight("@lsp.type.comment",        { fg = colors.comment },                 config)

    -- Semantic token modifiers
    utils.highlight("@lsp.mod.declaration",     { fg = colors.declaration },             config)
    utils.highlight("@lsp.mod.definition",      { bold = true },                         config)
    utils.highlight("@lsp.mod.deprecated",      { fg = colors.comment, strikethrough = true }, config)
    utils.highlight("@lsp.mod.documentation",   { fg = colors.comment },                 config)
    utils.highlight("@lsp.mod.readonly",        { italic = true },                       config)
    utils.highlight("@lsp.mod.static",          { bold = true },                         config)

    -- LSP document highlighting
    utils.highlight("LspReferenceText",         { bg = colors.selection },               config)
    utils.highlight("LspReferenceRead",         { bg = colors.selection },               config)
    utils.highlight("LspReferenceWrite",        { bg = colors.selection, bold = true },  config)

    -- LSP UI
    utils.highlight("LspSignatureActiveParameter", { fg = colors.accent1, bold = true }, config)
    utils.highlight("LspCodeLens",              { fg = colors.comment, italic = true },  config)
    utils.highlight("LspCodeLensSeparator",     { fg = colors.comment },                 config)
    utils.highlight("LspInlayHint",             { fg = colors.comment, bg = colors.line }, config)

end

return M
