vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.o.termguicolors = true

vim.g.colors_name = "gruber-darker"

require("gruber-darker").setup()
