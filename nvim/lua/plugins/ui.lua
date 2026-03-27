-- lua/plugins/ui.lua
return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

  -- Lualine (statusline)
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators   = { left = "", right = "" },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location", function() return vim.api.nvim_buf_line_count(0) .. "L" end },
      },
      extensions = { "neo-tree", "lazy" },
    },
  },
}

