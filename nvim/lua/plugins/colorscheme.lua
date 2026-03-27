return {
  {
    "catppuccin/nvim",
    name     = "catppuccin",
    lazy     = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      integrations = {
        barbecue = { dim_dirname = true, bold_basename = true },
        navic    = { enabled = true },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
