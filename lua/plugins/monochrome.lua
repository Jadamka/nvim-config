return {
    'kdheepak/monochrome.nvim',
    config = function()
        --vim.cmd("colorscheme monochrome")

        -- Make the background transparent
        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })  -- remove ~ background
    end
}
