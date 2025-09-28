return {
  "sainnhe/gruvbox-material",
  priority = 1000,      -- so it’s loaded early, before other plugins that rely on colors
  config = function()
    -- *optional* settings before applying the scheme:
    vim.g.gruvbox_material_background = "medium"   -- or "soft", "hard", etc.
    vim.g.gruvbox_material_foreground = "original"
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_enable_bold = 1

    -- apply the colorscheme:
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
