-- lua/plugins/lsp.lua
return {
  -- Mason - binary manager
  {
    "mason-org/mason.nvim",
    cmd  = "Mason",
    opts = { ui = { border = "rounded" } },
  },

  -- Mason + LSP bridge (auto-installs & auto-enables servers)
  {
    "mason-org/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "clangd", "rust_analyzer", "basedpyright" },
      automatic_enable = true, -- auto-calls vim.lsp.enable() for installed servers
    },
  },

  -- LSP core - per-server configuration
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    config = function()
      vim.lsp.config("basedpyright", {
        settings = {
          python = { analysis = { typeCheckingMode = "standard" } },
        },
      })
    end,
  },

  -- Dropbar (IDE-like breadcrumb winbar, replaces barbecue)
  {
    "Bekaboo/dropbar.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>;", function() require("dropbar.api").pick() end, desc = "Pick winbar symbol" },
    },
    opts = {},
  },
}
