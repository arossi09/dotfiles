local g = vim.g
local o = vim.o


-- Better UI
o.termguicolors = true
o.number = true
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true -- idk if i like this 


-- Tabs and readability
o.scrolloff = 8
o.expandtab = true
o.cindent = true
o.tabstop = 4
o.shiftwidth = 4
o.ignorecase = true
o.smartcase = true



-- UI/Syntax Highlighting
vim.cmd.highlight({"Error", "guibg=red"})
vim.cmd.highlight({"link", "Warning", "Error" })
o.background = "dark"


