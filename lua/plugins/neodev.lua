require("neodev").setup()

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local lspconfig = require("lspconfig")

local on_attach = require("lsp-attach")

for _, lang in ipairs({"lua_ls"}) do
    lspconfig[lang].setup({
        on_attach = on_attach,
    })
end
