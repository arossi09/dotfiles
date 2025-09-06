require("config.settings")
require("config.keybinds")
require("config.lazy")
require('bisqwit').colorscheme()

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = 'Find Files'})


