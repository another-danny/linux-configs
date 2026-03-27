-- lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    keys = {
      { "<leader>f",  "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>fp", "<cmd>Telescope git_files<cr>",  desc = "Git files" },
      { "<leader>fz", "<cmd>Telescope live_grep<cr>",  desc = "Live grep" },
      { "<leader>fo", "<cmd>Telescope oldfiles<cr>",   desc = "Old files" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "node_modules", ".git/" },
          mappings = {
            i = { ["<C-u>"] = false, ["<C-d>"] = false },
          },
        },
      })
    end,
  },
}

