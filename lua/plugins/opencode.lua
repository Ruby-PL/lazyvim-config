-- lua/plugins/opencode.lua
return {
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      { "folke/snacks.nvim", opts = { input = { enabled = true } } },
    },
    opts = {}, -- configure if you like

    keys = {
      {
        "<leader>oA",
        function()
          require("opencode").ask()
        end,
        desc = "OpenCode: Ask",
      },

      {
        "<leader>oa",
        function()
          require("opencode").ask("@cursor: ")
        end,
        desc = "OpenCode: Ask about cursor",
        mode = "n",
      },
      {
        "<leader>oa",
        function()
          require("opencode").ask("@selection: ")
        end,
        desc = "OpenCode: Ask about selection",
        mode = "v",
      },

      {
        "<leader>ot",
        function()
          require("opencode").toggle()
        end,
        desc = "OpenCode: Toggle terminal",
      },
      {
        "<leader>on",
        function()
          require("opencode").command("session_new")
        end,
        desc = "OpenCode: New session",
      },
      {
        "<leader>oy",
        function()
          require("opencode").command("messages_copy")
        end,
        desc = "OpenCode: Copy last message",
      },

      {
        "<S-C-u>",
        function()
          require("opencode").command("messages_half_page_up")
        end,
        desc = "OpenCode: Scroll up",
      },
      {
        "<S-C-d>",
        function()
          require("opencode").command("messages_half_page_down")
        end,
        desc = "OpenCode: Scroll down",
      },

      {
        "<leader>op",
        function()
          require("opencode").select_prompt()
        end,
        desc = "OpenCode: Select prompt",
        mode = { "n", "v" },
      },
      {
        "<leader>oe",
        function()
          require("opencode").prompt("Explain @cursor and its context")
        end,
        desc = "OpenCode: Explain code",
      },
    },

    config = function(_, opts)
      require("opencode").setup(opts)

      -- Map Esc Esc to exit terminal insert mode
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "*",
        callback = function()
          local opts = { buffer = 0 }
          vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], opts)
        end,
      })
    end,
  },
}
