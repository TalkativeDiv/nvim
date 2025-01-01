return   {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      notifier = { enabled = true, style = "fancy" },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      dashboard = {
        preset = {
          header = [[
    █████╗ ██████╗ ██╗  ██╗██╗  ██╗   ██╗██╗███╗   ███╗██╗
   ██╔══██╗██╔══██╗██║  ██║██║  ██║   ██║██║████╗ ████║██║
   ███████║██████╔╝███████║██║  ██║   ██║██║██╔████╔██║██║
   ██╔══██║██╔══██╗██╔══██║██║  ╚██╗ ██╔╝██║██║╚██╔╝██║╚═╝
   ██║  ██║██████╔╝██║  ██║██║██╗╚████╔╝ ██║██║ ╚═╝ ██║██╗
   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝
     ]],
        },
        {
          sections = {
            { section = "header" },
            { section = "keys",   gap = 1, padding = 1 },
            { section = "startup" },
          },
        },
      },
    },
  }
