return {
  "rose-pine/neovim", name = "rose-pine",
  config = function()
        styles = { bold = true, italic = false, transparency = false },
        vim.cmd [[colorscheme rose-pine]]
  end
}
