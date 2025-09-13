return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "lua", "cpp", "python", "rust" },
        highlight = { enable = true },
        indent = { enable = true },
        additional_vim_regex_highlighting = false,
      }
    end,
  }
}
