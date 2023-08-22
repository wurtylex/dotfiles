local on_attach = function()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = false,
      virtual_text = { severity_limit = "Error", },
      signs = false,
      update_in_insert = false,
    }
  )
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

require("lspconfig")["pyright"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim', 'ai' },
      },
    },
  },
}

vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
