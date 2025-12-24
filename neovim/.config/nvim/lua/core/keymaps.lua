
-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =====================
-- NORMAL MODE
-- =====================

-- Window navigation (jak tmux)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Save / misc
map("n", "<C-s>", "<cmd>w<CR>", opts)
map("n", "<Esc>", "<cmd>noh<CR>", opts)

-- =====================
-- BUFFERS
-- =====================

map("n", "<Tab>", "<cmd>bnext<CR>", opts)        -- następny bufor
map("n", "<S-Tab>", "<cmd>bprevious<CR>", opts) -- poprzedni bufor
map("n", "<leader>x", "<cmd>bdelete<CR>", opts) -- zamknij bufor

map("n", "<leader>bn", "<cmd>bnext<CR>", opts)  -- buffer next
map("n", "<leader>bp", "<cmd>bprevious<CR>", opts) -- buffer previous
map("n", "<leader>bl", "<cmd>ls<CR>", opts)     -- lista buforów

-- =====================
-- TELESCOPE
-- =====================

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts) -- pliki
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)  -- grep
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)    -- buffery
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)  -- help
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)   -- ostatnie pliki

-- =====================
-- NVIM-TREE
-- =====================

map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", opts)

