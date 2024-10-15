return {
  -- border style for documentation
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  -- border style for cmp menu
  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        completion = {
          border = "rounded",
          scrollbar = "║",
        },
        documentation = {
          border = "rounded",
        },
      },
    },
  },
}
