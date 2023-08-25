local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

lsp.ensure_installed({
    'clangd',
    'tsserver',
    'lua_ls',
    'dockerls',
    'pylsp'
})
