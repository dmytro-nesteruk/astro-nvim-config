return {
  {
    "folke/which-key.nvim",
    config = function(plugin, opts)
      require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
      local wk = require "which-key"

      vim.o.timeout = true
      vim.o.timeoutlen = 50

      wk.register({
        b = { name = "Buffer" },
        ["q"] = { "<cmd>lua require('user.utils').smart_quit()<CR>", "Quit" },
        ["r"] = {
          name = " Refactor",
          e = { ":Refactor extract<CR>", "Extract" },
          f = { ":Refactor extract_to_file<CR>", "Extract to file" },
          v = { ":Refactor extract_var<CR>", "Extract variable" },
          i = { ":Refactor inline_var<CR>", "Inline variable" },
          b = { ":Refactor extract_block<CR>", "Extract block" },
          t = { ":Refactor extract_block_to_file<CR>", "Extract block" },
        },
      }, { mode = "n", prefix = "<leader>" })
    end,
  },
}
