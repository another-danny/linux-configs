-- lua/keymaps.lua

local map = vim.keymap.set

map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>Q", "<cmd>q!<cr>")
map("n", "<leader>wq", "<cmd>wq<cr>")

-- Stay in visual mode when indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Diagnostics
map("n", "<leader>h", vim.diagnostic.open_float, { desc = "Show diagnostic" })
