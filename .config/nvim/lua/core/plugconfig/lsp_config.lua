require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "clangd",
        "eslint",
        "html",
        "tailwindcss",
        "tsserver",
        "intelephense",
        "pyright",
        -- "gopls",
        -- "omnisharp_mono",
        "omnisharp",
    }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>qf', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").eslint.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").intelephense.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "python" },
}

require("lspconfig").gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("lspconfig").omnisharp.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
