local g = vim.g
local o = vim.o


-- Better UI
o.termguicolors = true
o.number = true
o.relativenumber = true
o.signcolumn = 'yes'
o.colorcolumn = "80"
--o.cursorline = true -- idk if i like this 

vim.api.nvim_create_autocmd({"BufEnter", "WinEnter"},
{
  callback = function()
    local separator = " ░ "
    vim.opt.statuscolumn =
    '%s%=%#LineNr4#%{(v:relnum >= 4)?v:relnum.\"' .. separator .. '\":\"\"}' ..
    '%#LineNr3#%{(v:relnum == 3)?v:relnum.\"' .. separator .. '\":\"\"}' ..
    '%#LineNr2#%{(v:relnum == 2)?v:relnum.\"' .. separator .. '\":\"\"}' ..
    '%#LineNr1#%{(v:relnum == 1)?v:relnum.\"' .. separator .. '\":\"\"}' ..
    '%#LineNr0#%{(v:relnum == 0)?v:lnum.\" ' .. separator .. '\":\"\"}'

    vim.cmd("highlight LineNr0 guifg=#fff894")
    vim.cmd("highlight LineNr1 guifg=#bdbdbd")
    vim.cmd("highlight LineNr2 guifg=#9c9c9c")
    vim.cmd("highlight LineNr3 guifg=#7b7b7b")
    vim.cmd("highlight LineNr4 guifg=#5a5a5a")
  end
})

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


