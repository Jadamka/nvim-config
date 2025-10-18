return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local startify = require("alpha.themes.startify")
		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider
		startify.file_icons.provider = "devicons"

		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

        local is_valid, custom_header = pcall(require, "alpha_logo")
        if is_valid then
            dashboard.section.header.val = custom_header
        else
            dashboard.section.header.val = {
                "Neovim loaded without header"
            }
        end

		-- Menu options
		dashboard.section.buttons.val = {
			dashboard.button("e", "> New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "> Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button("r", "> Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "> Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "> Quit NVIM", ":qa<CR>"),
		}

		alpha.setup(dashboard.opts)

		-- Disable folding
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end
}
