return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions

    config.sources = {
      formatting.prettier.with {
        filetypes = {
          "svelte",
          "html",
          "json",
          "markdown",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
      },
      formatting.prismaFmt,
      diagnostics.eslint_d.with {
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
          "html",
          "vue",
          "svelte",
          "astro",
        },
      },

      code_actions.eslint,
      code_actions.cspell,
    }
    return config -- return final config table
  end,
}
