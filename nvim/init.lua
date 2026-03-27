-- Set leader keys before anything else (required before lazy.nvim setup)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Core settings and keymaps
require("options")
require("keymaps")

-- Plugins (bootstraps lazy.nvim and loads all plugin specs)
require("plugins")

