return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
        require("black-metal").setup({
            theme = "gorgoroth",
            variant = "dark",
            alt_bg = false,
            colored_docstrings = true,
          cursorline_gutter = true,
          dark_gutter = false,
          favor_treesitter_hl = false,
          plain_float = false,
          show_eob = true,
          term_colors = true,
          toggle_variant_key = nil,
          transparent = true,
        })
        require("black-metal").load()

        vim.cmd("colorscheme gorgoroth")

        -- Line highlighter
        --vim.api.nvim_set_hl(0, "CursorLine", { bg = "#303030" })
        --vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })
  end
}
