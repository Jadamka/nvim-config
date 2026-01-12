return {
    "zootedb0t/citruszest.nvim",
    config = function()
        require("citruszest").setup({
            option = {
                transparent = true,
                bold = false,
                italic = false,
            },
        })

         --vim.cmd("colorscheme citruszest")
    end
}
