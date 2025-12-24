local on_attach = function(_, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr, silent = true }

  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "gr", vim.lsp.buf.references, opts)
  map("n", "<leader>rn", vim.lsp.buf.rename, opts)
  map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

local caps = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  capabilities = caps,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

vim.lsp.config("pyright", {
  on_attach = on_attach,
  capabilities = caps,
})

vim.lsp.config("clangd", {
  on_attach = on_attach,
  capabilities = caps,
})

vim.lsp.enable({ "lua_ls", "pyright", "clangd" })

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
})

