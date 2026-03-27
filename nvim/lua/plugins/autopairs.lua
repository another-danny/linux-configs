-- lua/plugins/autopairs.lua
return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",      -- load only when you start typing
    opts = {
      check_ts = true,          -- use Treesitter to check for pairs
      map_cr   = true,          -- add newline on <CR> inside pairs
    },
    config = function(_, opts)
      require("nvim-autopairs").setup(opts)
    end,
  },
}
