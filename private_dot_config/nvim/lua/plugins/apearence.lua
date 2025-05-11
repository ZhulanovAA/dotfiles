return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      -- transparent_background = true,
      integrations = {
        notify = true,
        neotree = true,
        noice = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      highlights = function()
        require("catppuccin.groups.integrations.bufferline").get()
      end,
    },
  },
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- table.insert(opts.sections.lualine_x, "😄")
      opts.sections.lualine_z = opts.sections.lualine_y
      opts.sections.lualine_y = opts.sections.lualine_x
      opts.sections.lualine_x = {}

      -- section_separators = { left = '', right = '' },
      -- component_separators = { left = '', right = '' }

      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "", right = "" }
    end,
  },
  -- Remove highlights outside of current scope
  {
    "folke/twilight.nvim",
    -- opts = {
    --   dimming = {
    --     alpha = 0.75,
    --   },
    -- },
    keys = {
      { "<leader>uh", "<cmd>Twilight<cr>", desc = "Toggle twilight" },
    },
  },
}
