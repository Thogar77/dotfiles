vim.opt.number = true
vim.opt.relativenumber = true
vim.g.lspconfig_deprecation_warning = false

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.clipboard = "unnamedplus"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 250

vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- albo "", albo "▎"
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

