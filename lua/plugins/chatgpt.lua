return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "API_KEY",
        openai_params = {
          model = "meta-llama/llama-3.3-70b-instruct:free", -- of "claude-3-sonnet", enz.
        },
        openai_api_endpoint = "https://openrouter.ai/api/v1/chat/completions",
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
