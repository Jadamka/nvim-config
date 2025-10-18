return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities() 

            vim.lsp.config("lua_ls", { 
                capabilities = capabilities 
            })

            vim.lsp.config("clangd", {
                capabilities = capabilities 
            })

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("clangd")

            -- For warnings and errors
            vim.diagnostic.config({
                virtual_text = false,   -- disable inline messages
                signs = true,           -- keep signs in the sign columns
                underline = true,
                update_in_insert = true,
                severity_sort = true,
            })

            -- Show diagnostics in a floating window when cursor in hold
            vim.api.nvim_create_autocmd("CursorHold", {
                callback = function()
                    vim.diagnostic.open_float(nil, { focus = false})
                end
            })

            vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
