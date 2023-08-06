return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup {
        transparent = true,
        dimInactive = true,
      }
    end,
  },
}
