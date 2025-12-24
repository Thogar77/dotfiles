return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- performance / safety
    bigfile = { enabled = true },
    quickfile = { enabled = true },

    -- UI / UX
    dashboard = { enabled = true },
    notifier = { enabled = true },
    input = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    scope = { enabled = true },
    words = { enabled = true },

    -- DISABLED (bo masz inne pluginy)
    picker = { enabled = false },   -- telescope
    explorer = { enabled = false }, -- nvim-tree
    indent = { enabled = false },   -- indent-blankline
  },
}

