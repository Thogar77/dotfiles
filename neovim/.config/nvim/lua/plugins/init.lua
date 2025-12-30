local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("plugins.snacks"),
    require("plugins.formatting"),
    require("plugins.lsp"),      
  { "craftzdog/solarized-osaka.nvim", priority = 1000, lazy = false, config = function() require("plugins.theme") end },

  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", config = function() require("plugins.mason") end },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = function() require("plugins.treesitter") end },

  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function() require("plugins.nvimtree") end },

  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = function() require("plugins.telescope") end },

  { "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function() require("plugins.bufferline") end },

  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function() require("plugins.lualine") end },

  { "lewis6991/gitsigns.nvim", config = function() require("plugins.gitsigns") end },

  { "folke/which-key.nvim", config = function() require("plugins.whichkey") end },

  { "numToStr/Comment.nvim", config = function() require("plugins.comment") end },

  { "lukas-reineke/indent-blankline.nvim", config = function() require("plugins.indentline") end },

  { "stevearc/conform.nvim", config = function() require("plugins.conform") end },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function() require("plugins.cmp") end,
  },
})

