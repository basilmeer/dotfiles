local lspconfig = require('lspconfig')

-- Ruby
lspconfig.ruby_lsp.setup({})

-- TailwindCSS
lspconfig.tailwindcss.setup({})

-- Typescript
local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end
    })
  end
end

lspconfig.ts_ls.setup({
  on_attach = on_attach,
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
  },
  cmd = { "typescript-language-server", "--stdio" }
})

