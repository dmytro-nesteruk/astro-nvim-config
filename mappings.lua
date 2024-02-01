-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {

  -- first key is the mode
  n = {

    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    ["<F2>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<F1>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<leader>2"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<leader>1"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<leader>s"] = {
      ":noautocmd w<CR>",
      desc = "Save without formating",
    },

    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    ["<S-h>"] = {
      "<C-w>h",
      desc = "Move focus to left window",
    },
    ["<S-l>"] = {
      "<C-w>l",
      desc = "Move focus to right window",
    },
    ["<S-j>"] = { ":m '>+1<CR>gv=gv" },
    ["<S-k>"] = { ":m '<-2<CR>gv=gv" },
  },
  v = {
    ["<S-j>"] = { ":m .+1<CR>" },
    ["<S-k>"] = { ":m .-2<CR>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["jk"] = {
      "<Esc>",
    },
  },
}
