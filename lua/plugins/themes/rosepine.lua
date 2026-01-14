return {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
        variant = "main", -- options: main, moon, dawn
        styles = {
            bold = false,
            italic = false,
            transparency = true,
        },
    },
    config = function(_, opts)
        require("rose-pine").setup(opts)
        --vim.cmd("colorscheme rose-pine")
    end
}
