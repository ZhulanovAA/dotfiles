return {
  -- autocompletion for cmdline
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "hrsh7th/cmp-cmdline" },
  --   opts = function(_, _)
  --     local cmp = require("cmp")
  --
  --     -- `:` cmdline setup.
  --     cmp.setup.cmdline(":", {
  --       mapping = cmp.mapping.preset.cmdline(),
  --       sources = cmp.config.sources({
  --         { name = "path" },
  --       }, {
  --         {
  --           name = "cmdline",
  --           option = {
  --             ignore_cmds = { "Man", "!" },
  --           },
  --         },
  --       }),
  --     })
  --   end,
  -- },
  -- close neotree after choosing file
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      event_handlers = {
        {
          event = "file_opened",
          handler = function(_)
            -- auto close
            -- vimc.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  },
  -- save session per directory
  {
    "rmagatti/auto-session",
  },
}
