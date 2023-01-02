-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝ 
local nvim_lsp = require("lspconfig")
local opts = { noremap = true, silent = true }

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', '<leader>lr', ':lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>lc', ':lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<leader>lf', ':lua vim.lsp.buf.format { async = true }<CR>', opts)

end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

nvim_lsp['gopls'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150
    }
}
nvim_lsp['pyright'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150
    },
}
nvim_lsp['dartls'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150
    }
}
nvim_lsp['sumneko_lua'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150
    }
}

nvim_lsp['clangd'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150
    }
}

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.pydocstyle,
        null_ls.builtins.formatting.black,
    }
})
