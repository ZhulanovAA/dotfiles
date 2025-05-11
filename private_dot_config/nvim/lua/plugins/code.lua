return {
  -- add swap actions for treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    ---@type TSConfig
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      textobjects = {
        swap = {
          enable = true,
          swap_next = {
            ["<leader>csp"] = "@parameter.inner",
            ["<leader>csf"] = "@function.outer",
            ["<leader>csc"] = "@class.outer",
            ["<leader>css"] = "@statement.outer",
          },
          swap_previous = {
            ["<leader>csP"] = "@parameter.inner",
            ["<leader>csF"] = "@function.outer",
            ["<leader>csC"] = "@class.outer",
            ["<leader>csS"] = "@statement.outer",
          },
        },
      },
    },
  },
  -- Change autocomplete behavior
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --     opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
  --       ["<C-y>"] = cmp.mapping.confirm({ select = true }),
  --       ["<CR>"] = cmp.config.disable,
  --     })
  --   end,
  -- },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = { preset = "default" },
    },
  },
}
