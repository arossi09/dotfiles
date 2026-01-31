vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.relativenumber = true
vim.o.wrap = true 
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.winborder = "none"
vim.o.scrolloff = 10

vim.keymap.set('n', '<leader>s', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')


vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')

vim.pack.add({
	{ src = "https://github.com/Mofiqul/adwaita.nvim"},
	{ src = "https://github.com/lervag/vimtex" },   -- for latex compiler in vim
	{ src = "https://github.com/epwalsh/obsidian.nvim" }, -- for obsidian support for nvim
	{ src = "https://github.com/sainnhe/gruvbox-material" }, -- a theme
	{ src = "https://github.com/stevearc/oil.nvim" }, 			 -- directory viewer
	{ src = "https://github.com/kylechui/nvim-surround" },	 -- to help with surrounding parenthesis, brackets, etc
	{ src = "https://github.com/nvim-lua/plenary.nvim" },    -- idk some type of support
	{ src = "https://github.com/nvim-telescope/telescope.nvim" }, -- a fuzzy finder
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },  -- for syntax highlighting
	{ src = "https://github.com/neovim/nvim-lspconfig" },		-- for langauge server support for highlighting syntax and other
	{ src = "https://github.com/mason-org/mason.nvim" },		-- for searching languager servers
})


-- colorschemes
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_foreground = "original"
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_enable_bold = 1
vim.cmd("colorscheme gruvbox-material")
vim.cmd(":hi statusline guibg=NONE")

vim.g.adwaita_darker = true 
vim.g.adwaita_disable_cursorline = true -- to disable cursorline
--vim.cmd([[colorscheme adwaita]])

--require('bisqwit').colorscheme();

-- telescope

require('telescope').setup {
	defaults = {
		color_devicons = true,
		sorting_strategy = "ascending",
		borderchars = { "", "", "", "", "", "", "", "" },
		path_displays = "smart",
		layout_strategy = "horizontal",
		layout_config = {
			height          = 100,
			width           = 400,
			prompt_position = "top",
			preview_cutoff  = 40,
		},
		mappings = {
			i = {
				["<C-j>"] = "move_selection_next",
				["<C-k>"] = "move_selection_previous"
			}
		}
	}

}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files)
vim.keymap.set('n', '<leader>pg', builtin.live_grep)
vim.keymap.set('n', '<leader>sh', builtin.help_tags)


-- lsp
vim.lsp.enable({ "lua_ls", "rust_analyzer", "superhtml", "clangd", "cssls", "biome", "ts_ls", "emmet_language_server",
	"glsl_analyzer", "pylsp", "texlab" })

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			}
		}

	}
})

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>w', vim.diagnostic.open_float)

-- oil
require "oil".setup {
	keymaps = {
		["t"] = "actions.open_terminal",
	}
}
vim.keymap.set('n', '<leader>e', ":Oil<CR>")


--mason
require "mason".setup()



vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})
vim.cmd("set completeopt+=noselect")

--obsidian
require("obsidian").setup({
	workspaces = {
		{
			name = "main",
			path = "~/vaults/ant-obsidian-main",
		},
	},
	templates = {
		folder = "/Users/ant/vaults/ant-obsidian-main/Templates",
		date_format = "%Y-%m-%d-%a",
		time_format = "%H:%M",
	},
	disable_frontmatter = true,

	daily_notes = {
    folder = "Daily",        
    template = "Daily Note Template.md",
  },

	note_id_func = function(title)
  if title and title ~= "" then
    return title
  end
  	return os.date("%Y%m%d%H%S")
	end,

})

vim.api.nvim_set_keymap("n", "<Leader>oo", ":ObsidianOpen ", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>on", ":ObsidianNew ", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>os", ":ObsidianSearch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ot", ":ObsidianTemplate<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ob", ":ObsidianBacklinks<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>or", ":ObsidianRename ", { noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>od", ":ObsidianToday<CR>", { noremap = true})
vim.opt.conceallevel = 2
