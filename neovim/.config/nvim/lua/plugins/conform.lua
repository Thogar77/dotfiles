local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    cpp = { "clang_format" },
    c = { "clang_format" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

vim.api.nvim_create_user_command("Format", function()
  conform.format({ async = true, lsp_fallback = true })
end, {})

