
return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "latex"
            },
            auto_install = true,
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
