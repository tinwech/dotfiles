return {
  -- Add keymap to toggle Copilot
  {
    "zbirenbaum/copilot.lua",
    keys = {
      {
        "<leader>at",
        function()
          if require("copilot.client").is_disabled() then
            require("copilot.command").enable()
          else
            require("copilot.command").disable()
          end
        end,
        desc = "Toggle (Copilot)",
      },
    },
  },
  -- Lower priority of Copilot in completion
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      for _, source in ipairs(opts.sources) do
        if source.name == "copilot" then
          source.priority = 0
        end
      end
    end,
  },
}
