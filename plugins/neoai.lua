return {
  "Bryley/neoai.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  cmd = {
    "NeoAI",
    "NeoAIOpen",
    "NeoAIClose",
    "NeoAIToggle",
    "NeoAIContext",
    "NeoAIContextOpen",
    "NeoAIContextClose",
    "NeoAIInject",
    "NeoAIInjectCode",
    "NeoAIInjectContext",
    "NeoAIInjectContextCode",
  },
  opts = {},
  open_ai = {
    api_key = {
      env = "OPENAI_API_KEY",
      -- value = "",
      -- `get` is is a function that retrieves an API key, can be used to override the default method.
      -- get = function() ... end

      -- Here is some code for a function that retrieves an API key. You can use it with
      -- the Linux 'pass' application.
      -- get = function()
      --     local key = vim.fn.system("pass show openai/mytestkey")
      --     key = string.gsub(key, "\n", "")
      --     return key
      -- end,
    },
  },
}
