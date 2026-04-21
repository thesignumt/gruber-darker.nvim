local M = {}

function M.load()
    local palette = require("gruber-darker.palette")
    local util = require("gruber-darker.util")
    local highlights = require("gruber-darker.highlights")

    highlights.apply(palette, util)
end

return M
