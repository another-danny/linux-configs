-- lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    main  = "nvim-treesitter.configs",
    opts  = {
      ensure_installed = { "c", "lua", "python", "javascript", "rust" },
      highlight = { enable = true },
      indent    = { enable = true },
    },
  },
}

