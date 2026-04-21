local M = {}

function M.hl(name, val)
    if type(name) == "table" then
        for _, n in ipairs(name) do
            vim.api.nvim_set_hl(0, n, val)
        end
    else
        vim.api.nvim_set_hl(0, name, val)
    end
end

function M.opts(fg, bg, opts)
    opts = opts or {}
    opts.fg = fg
    opts.bg = bg
    return opts
end

return M
