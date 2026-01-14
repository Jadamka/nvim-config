return {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_transparent_background = 1
        -- Set contrast to 'medium' (not too dark)
        vim.g.gruvbox_material_background = "medium"
        
        -- Enable bold/italic only if you want them
        vim.g.gruvbox_material_enable_bold = 0
        vim.g.gruvbox_material_enable_italic = 0
        
        -- Better contrast for non-active windows
        vim.g.gruvbox_material_better_performance = 1

        vim.cmd.colorscheme("gruvbox-material")
    end
}
