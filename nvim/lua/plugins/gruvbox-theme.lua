return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        opts = {
            contrast = "hard",
            transparent_mode = false,
            overrides = {
                String = {italic = false},
            },
        },
        config = function(_, opts)
            require("gruvbox").setup(opts)
--            vim.cmd([[colorscheme gruvbox]])
        end
    }
}
