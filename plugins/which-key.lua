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
        ["h"] = {
          name = "󰾙 Lspsaga",
          f = { "<cmd>Lspsaga finder<CR>", "Finder" },
          t = { "<cmd>Lspsaga term_toggle<CR>", "Toggle terminal" },
          a = { "<cmd>Lspsaga code_action<CR>", "Actions" },
          r = { "<cmd>Lspsaga rename<CR>", "Rename" },
          d = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "Show float diagnostics" },
          h = { "<cmd>Lspsaga hover_doc<CR>", "Documentation" },
          ["g"] = {
            name = "Definition",
            p = { "<cmd>Lspsaga peek_definition<CR>", "Definition" },
            g = { "<cmd>Lspsaga goto_definition<CR>", "Go to definition" },
          },
          l = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Line diagnostics" },
          p = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Prev diagnostic" },
          n = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Next diagnostic" },
          o = { "<cmd>Lspsaga outline<CR>", "Outline" },
        },

        ["x"] = {
          e = { "<cmd>!npx eslint --fix %:p<CR>", "eslint --fix current file" },
          s = { "<cmd>!npx stylelint --fix %:p<CR>", "stylelint --fix current file" },
          p = { '<cmd>!npx prettier "%:p" --write --config ./.prettierrc*?<CR>', "prettier --write current file" },
        },
      }, { mode = "n", prefix = "<leader>" })
    end,
  },
}
