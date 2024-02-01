return {
  "rcarriga/nvim-notify",
  opts = function()
    require("notify").setup {
      render = "compact",
      max_width = 70,
      timeout = 500,
    }
  end,
}
