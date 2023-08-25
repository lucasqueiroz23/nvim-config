require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'clangd',
        'dockerls',
        'tsserver',
    }
})

require('lspconfig').lua_ls.setup {}
require('lspconfig').clangd.setup {}
require('lspconfig').dockerls.setup {}
require('lspconfig').tsserver.setup {}
