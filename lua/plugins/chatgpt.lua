return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "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",
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
