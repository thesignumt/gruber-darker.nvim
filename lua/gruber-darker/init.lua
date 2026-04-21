local M = {}

function M.setup()
    require("gruber-darker.highlights").apply(
        require("gruber-darker.palette"),
        require("gruber-darker.util")
    )
end

return M
