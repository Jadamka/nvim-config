return {
    "ficcdaf/ashen.nvim",
    tag = "*",
    lazy = false,
    priority = 1000,

    opts = {
        transparent = false,
        style = {
            bold = false,
            italic = false,
        },
        style_presets = {
            bold_functions = false,
            italic_comments = false,
        },
    },

    config = function(_, opts)
        require("ashen").setup(opts)
        --vim.cmd("colorscheme ashen")
    end
}
