return {
  {
    "neovim/nvim-lspconfig",
    -- opts = {
    --   servers = {
    --     dartls = {},
    --   },
    -- },
  },

  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
}
--[[ return {
  
} ]]
