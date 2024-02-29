-- after the language server attaches to the current buffer
return function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', function()
        if vim.bo[bufnr].filetype == "rust" then
            vim.cmd.RustLsp("codeAction")
        else
            vim.lsp.buf.code_action()
        end
    end, bufopts)
    vim.keymap.set('n', '<space>fo', vim.lsp.buf.format, bufopts)

    if client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(bufnr)
    end
end

