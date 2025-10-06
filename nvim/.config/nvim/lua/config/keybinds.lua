local function map(m, k, v)
        vim.keymap.set(m, k, v, {silent = true})
end




-- Quit nvim
map('n', '<C-Q>', ':q<CR>')
-- Move lines up and down

map('n', '<C-k>', ':move .-2<CR>')
map('n', '<C-j>', ':move .+1<CR>')
map('x', '<C-j>', ':move .>+1<CR>gv=gv')
map('x', '<C-k>', ':move .<-2<CR>gv=gv')






-- telescope --
--







