return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua"
      "bash",
      "lua",
      "css",
      "scss",
      "html",
      "json",
      "jsonc",
      "javascript",
      "typescript",
      "markdown_inline",
      "tsx",
      "markdown",
      "svelte",
      "vue",
      "dockerfile",
      "graphql",
      "prisma",
      "pug",
      "astro"
    })
  end,
}
