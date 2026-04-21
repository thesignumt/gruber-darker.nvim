local M = {}

function M.apply(palette, util)
    local colors = palette.colors
    local accents = palette.accents
    local hl = util.hl
    local opts = util.opts

    hl("Normal", opts(colors.fg, colors.bg))

    hl("@comment", opts(colors.gray))

    hl("@keyword", opts(colors.yellow, nil, { bold = true }))
    hl({ "@keyword.import", "@keyword.directive" }, opts(colors.quartz))

    hl({ "@string", "@string.escape", "@character" }, opts(colors.green))

    hl({ "@function", "@function.call" }, opts(colors.fg))

    hl("@type", opts(colors.fg))
    hl("@type.builtin", opts(colors.quartz))
    hl("@lsp.type.type", opts(colors.quartz))

    hl({ "@variable", "@property" }, opts(colors.fg_light))

    hl("Pmenu", opts(colors.fg, colors.bg_alt))
    hl("PmenuSel", opts(colors.bg, accents.blue))
    hl("PmenuSbar", opts(nil, colors.bg_alt))
    hl("PmenuThumb", opts(nil, colors.quartz))

    hl("CmpItemKindDefault", opts(colors.fg))

    hl("FloatBorder", opts(colors.bg_alt))
    hl("NormalFloat", opts(nil, colors.bg_alt))

    hl("StatusLine", opts(colors.white, colors.bg_alt))
    hl("StatusLineNC", opts(colors.quartz, colors.bg_alt))

    hl("DiagnosticError", opts(accents.red))
    hl("DiagnosticWarn", opts(accents.yellow))
    hl("DiagnosticInfo", opts(accents.cyan))
    hl("DiagnosticHint", opts(accents.blue))

    hl("Title", opts(colors.yellow, nil, { bold = true }))

    hl("GitSignsAdd", { fg = "#3f5a3f" })
    hl("GitSignsChange", { fg = "#5a5a3f" })
    hl("GitSignsDelete", { fg = "#5a3f3f" })
    hl("GitSignsTopDelete", { fg = "#5a3f3f" })
    hl("GitSignsChangeDelete", { fg = "#6a4a3a" })
end

return M
