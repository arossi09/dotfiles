require("config.settings")
require("config.keybinds")
require("config.lazy")

-- require('bisqwit').colorscheme()
--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = 'Find Files'})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {desc = 'live grep'})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {desc = 'search help'})
vim.opt.termguicolors = true
vim.keymap.set('n', '<leader>y', '"+y', {noremap = true, silent = true})
vim.keymap.set('v', '<leader>y', '"+y', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>pp', '"+p', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>pv', ':Ex<CR>')



