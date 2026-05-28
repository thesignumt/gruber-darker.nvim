local M = {}

function M.apply()
    local gdp = require("gruber-darker.palette")
    local gdu = require("gruber-darker.util")
    local colors = gdp.colors
    local accents = gdp.accents
    local hl = gdu.hl
    local opts = gdu.opts ---@type fun(fg?:string, bg?:string, opts?:table):table

    hl("Normal", opts(colors.fg, colors.black))
    hl("Title", opts(colors.yellow, nil, { bold = true }))
    hl("Directory", opts(colors.niagara, nil, { bold = true }))

    hl({ "Comment", "@comment" }, opts(colors.brown))

    hl("@keyword", opts(colors.yellow, nil, { bold = true }))
    hl({ "@keyword.import", "@keyword.directive" }, opts(colors.quartz))
    hl("@keyword.directive.python", opts(colors.gray))

    hl({ "@string", "@string.escape", "@character" }, opts(colors.green))
    hl("@character.special", opts(colors.fg))

    hl({ "@function", "@function.call" }, opts(colors.fg))
    hl("@function.python", opts(colors.niagara))
    hl("@function.builtin", opts(colors.quartz))
    hl("@function.builtin.python", opts(colors.yellow))

    hl("@type", opts(colors.fg))
    hl("@type.builtin", opts(colors.quartz))
    hl("@lsp.type.type", opts(colors.quartz))

    hl({ "@variable", "@property" }, opts(colors.fg_pos1))
    hl(
        { "@variable.builtin", "@constant.builtin", "@module.builtin" },
        opts(colors.quartz)
    )

    hl("Pmenu", opts(colors.fg, colors.bg_pos1))
    hl("PmenuSel", opts(colors.bg, accents.blue))
    hl("PmenuSbar", opts(nil, colors.bg_pos1))
    hl("PmenuThumb", opts(nil, colors.quartz))

    hl("CmpItemKindFunction", opts(colors.quartz))
    hl("CmpItemKindMethod", opts(colors.quartz))
    hl("CmpItemKindVariable", { fg = "#f4f4ff" })
    hl("CmpItemKindField", { fg = "#e4e4ef" })
    hl("CmpItemKindProperty", { fg = "#e4e4ef" })
    hl("CmpItemKindKeyword", opts(colors.yellow))
    hl("CmpItemKindOperator", opts(colors.yellow))
    hl("CmpItemKindString", opts(colors.green))
    hl("CmpItemKindConstant", opts(colors.quartz))
    hl("CmpItemKindType", opts(colors.quartz))
    hl("CmpItemKindEnum", opts(colors.wisteria))

    hl("FloatBorder", opts(colors.bg_pos1))
    hl("NormalFloat", opts(nil, colors.bg_pos1))

    hl("StatusLine", opts(colors.white, colors.bg_pos1))
    hl("StatusLineNC", opts(colors.quartz, colors.bg_pos1))

    hl("DiagnosticError", opts(accents.red))
    hl("DiagnosticWarn", opts(accents.yellow))
    hl("DiagnosticInfo", opts(accents.cyan))
    hl("DiagnosticHint", opts(accents.blue))

    hl("GitSignsAdd", { fg = "#3f5a3f" })
    hl("GitSignsChange", { fg = "#5a5a3f" })
    hl("GitSignsDelete", { fg = "#5a3f3f" })
    hl("GitSignsTopDelete", { fg = "#5a3f3f" })
    hl("GitSignsChangeDelete", { fg = "#6a4a3a" })

    hl("Cursor", opts(colors.bg, colors.yellow))
    hl("CursorLineNr", opts(colors.yellow, nil, { bold = true }))

    -- Oil.nvim
    hl("OilDir", opts(colors.niagara, nil, { bold = true }))

    -- Fugitive
    hl(
        { "fugitiveHeading", "fugitiveHeader" },
        opts(colors.yellow, nil, { bold = true })
    )
    hl("fugitiveHelpHeader", opts(colors.niagara, nil, { bold = true }))
    hl("fugitiveHelpTag", opts(colors.wisteria))
    hl("fugitiveSymbolicRef", opts(colors.niagara))
    hl("fugitiveHash", opts(colors.bg_pos4))

    hl("fugitiveStagedModifier", opts(colors.green))
    hl("fugitiveUntrackedModifier", opts(colors.quartz))
    hl("fugitiveUnmergedModifier", opts(colors.yellow))

    hl("fugitiveStagedSection", opts(colors.green, nil, { bold = true }))
    hl("fugitiveUnstagedSection", opts(colors.red, nil, { bold = true }))
    hl("fugitiveUntrackedSection", opts(colors.quartz, nil, { bold = true }))
    hl("fugitiveUnmergedSection", opts(colors.yellow, nil, { bold = true }))

    hl("fugitiveStagedFile", opts(colors.green))
    hl("fugitiveUnstagedFile", opts(colors.red))
    hl("fugitiveUntrackedFile", opts(colors.quartz))
    hl("fugitiveUnmergedFile", opts(colors.yellow))

    hl({ "fugitiveCommit", "fugitiveCommitSummary" }, opts(colors.fg))
    hl("fugitiveCommitSHA", opts(colors.bg_pos4))
    hl("fugitiveCommitAuthor", opts(colors.niagara))
    hl("fugitiveCommitDate", opts(colors.niagara_sub1))

    hl("fugitiveBlameDelimiter", opts(colors.bg_pos4))
    hl("fugitiveBlameHash", opts(colors.niagara))
    hl("fugitiveBlameTime", opts(colors.niagara_sub1))
    hl("fugitiveBlameSummary", opts(colors.fg))
    hl("fugitiveBlameUncommitted", opts(colors.red_pos1))
end

return M
