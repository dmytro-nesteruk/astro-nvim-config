return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    -- local code_actions = null_ls.builtins.code_actions

    config.sources = {

      -- go
      formatting.gofumpt,
      formatting.goimports_reviser,
      formatting.golines,
      diagnostics.golangci_lint,
      -- prisma schema
      formatting.prismaFmt.with {
        filetype = {
          "prisma",
        },
      },
      -- js,ts, frontend
      formatting.prettier.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "astro",
          "svelte",
          "html",
          "json",
          "jsonc",
          "markdown",
          "css",
          "scss",
          "vue",
        },
      },
      diagnostics.eslint.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "svelte",
          "astro",
        },
      },
      diagnostics.stylelint.with {
        filetypes = {
          "scss",
          "css",
          "sass",
          "postcss",
          "svelte",
          "vue",
          "astro",
          -- "html",
        },
      },
      -- code_actions.eslint,
      -- code_actions.cspell,
    }
    return config -- return final config table
  end,
}
