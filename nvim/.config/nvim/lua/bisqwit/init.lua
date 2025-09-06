
local M = {}

local colors = {
    bg     = "#000000",
    fg     = "#e0e0e0",
    grey   = "#aaaaaa",
    red    = "#de6b60",
    green =  "#0d8b0f",
    light_green = "#88dc77",
    cyan   = "#009093",
    white  = "#ffffff",
    yellow = "#ffb000",
    purple = "#af6ffd",
    light_purple = "#d8b8ff",
    lineNr = "#c7c7c7",
    blue   = "#6e8de1",
    olive  = "#7d9e82",
    dark_blue = "#00067f",
}


function M.colorscheme()


    vim.o.background = 'dark'
    vim.g.colors_name = 'bisqwit'
    local set = vim.api.nvim_set_hl

    set(0, "Normal", { bg = colors.bg, fg = colors.fg})
    set(0, "Visual", {fg = colors.bg, bg = colors.grey})
    set(0, 'Comment', {fg = colors.red, italic = false})
    set(0, "LineNr", {fg = colors.lineNr})
    set(0, 'Constant', {fg = colors.purple})
    set(0, 'Identifier', { fg = colors.grey})
    set(0, 'Function', {fg = colors.grey})
    set(0, 'Type', {fg = colors.white})
    set(0, 'Error', {fg = colors.red, bold = true})  
    set(0, 'String', {fg = colors.blue})
    set(0, "Statement", {fg=colors.white})
    set(0, '@Variable', {fg = colors.grey})
    set(0, "@punctuation.delimiter", {fg = colors.green})



    -- Additional punctuation for specific bracket types
    set(0, "@constructor.lua", {fg = colors.green})

    -- Operators
    set(0, "@assignment", { fg = colors.light_green })         --      = 
    set(0, "@operator", {fg = colors.cyan})                    --      != == <= >=
    set(0, "@punctuation.bracket", {fg = colors.green})        --      [] {}
    set(0, "@punctuation.paran", { fg = colors.cyan} )         --      ()
    set(0, "@operator.member", {fg = colors.cyan})
    


    -- cpp
    set(0, "@type.builtin.cpp", {fg = colors.white})
    set(0, "@module.cpp", {fg= colors.grey})
    set(0, "@keyword.import.cpp", {fg= colors.light_purple})
    set(0, "@keyword.directive.cpp", {fg=colors.light_purple})
    set(0, "@keyword.directive.define.cpp", {fg=colors.light_purple})
    set(0, "@operator.scope", {fg=colors.olive})              --       ::

    --python
    set(0, "@punctuation.bracket.python", {fg = colors.green})
    set(0, "@string.documentation.python", {fg = colors.red})


    --Telescope
    set(0, "TelescopeBorder", {fg = colors.cyan})



end

return M
