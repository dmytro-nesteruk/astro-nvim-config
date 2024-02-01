return {
  lsp = {
    config = {
      gopls = function(opts)
        opts.cmp = {
          "gopls",
        }
        opts.filetypes = { "go", "gomod", "gowork", "gotmpl" }
        opts.root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git")
        opts.settings = {
          gopls = {
            compliteUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        }

        return opts
        -- return {
        --   filetypes = { "go", "gomod", "gowork", "gotmpl" },
        --   root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
        --   settings = {},
        -- }
      end,
    },
  },
}
