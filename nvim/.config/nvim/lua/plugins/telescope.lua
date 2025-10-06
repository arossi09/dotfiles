return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    require('telescope').setup({
        defaults = {
            color_devicons = true,
            sorting_strategy = "ascending",
            borderchars = {"", "", "", "", "", "", "", ""},
            path_displays = "smart",
            layout_strategy = "horizontal",
            layout_config ={
                height = 100,
                width  = 400,
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

    })
end,
}

