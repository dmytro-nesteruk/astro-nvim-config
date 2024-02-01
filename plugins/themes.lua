return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      require("tokyonight").setup({
        style = "storm",
        transparent = false,
        dim_inactive = true
      })
    end
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup {
        transparent = false,
        dimInactive = true,
      }
    end,
  },
}
