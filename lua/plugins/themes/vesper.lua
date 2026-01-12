return {
    'datsfilipe/vesper.nvim',
    config = function()
        require('vesper').setup({
            transparent = true,
            italics = {
                comments = false,
                keywords = false,
                functions = false,
                strings = false,
                variables = false,
            },
            override = {},
            palette_override = {}
        })

        --vim.cmd("colorscheme vesper")
    end
}
