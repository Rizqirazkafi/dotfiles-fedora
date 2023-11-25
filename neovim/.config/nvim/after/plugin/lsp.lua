require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "html",
        "cssls",
        "tsserver",
        "eslint",
        "pyright",
    }
})
local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
    vim.keymap.set('n', '<leader>fo', function()
        vim.lsp.buf.format()
    end)
end
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
require("lspconfig")['lua_ls'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },

        },
    },
}
require("lspconfig").emmet_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "less", "sass", "scss", "svelte", "pug", "vue" },
    init_options = {
        html = {
            options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
            },
        },
    }
}
require("lspconfig").html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"html"},
}
require("lspconfig").cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"css"},
}
require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    single_file_support = true,
}
require("lspconfig").eslint.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    single_file_support = true,
}
require("lspconfig").marksman.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").jsonls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").phpactor.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        ["language_server_phpstan.enabled"] = false,
        ["language_server_psalm.enabled"] = false,
    }
}
-- require("lspconfig").intelephense.setup{
--     on_attach = on_attach,
--     capabilities = capabilities,
-- }
-- require("lspconfig").pyright.setup{
--     on_attach = on_attach,
--     capabilities = capabilities,
--     filetypes = {"python"},
-- }
require("lspconfig").gopls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmp"},
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
}
require("lspconfig").pylsp.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
    settings = {
        pylsp ={
            plugins = {
                python_lsp_black = {enabled = true, line_length = 80}, --black doesn't use exec
                python_lsp_ruff = {enabled = true}, --mypy doesn't use exec
                pylsp_mypy = {enabled = true}, --mypy doesn't use exec
            }
        }
    }
}
require("lspconfig").ltex.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").texlab.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

