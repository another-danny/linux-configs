-- lua/plugins/init.lua

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Collect plugin specs from sub-modules
local modules = {
  "plugins.colorscheme",
  "plugins.autopairs",
  "plugins.treesitter",
  "plugins.neotree",
  "plugins.lsp",
  "plugins.telescope",
  "plugins.completion",
  "plugins.ui",
}

local specs = {}
for _, mod in ipairs(modules) do
  local ok, tbl = pcall(require, mod)
  if ok and type(tbl) == "table" then
    vim.list_extend(specs, tbl)
  end
end

require("lazy").setup(specs, {
  ui       = { border = "rounded" },
  defaults = { lazy = true },
})
