
return {
    "folke/snacks.nvim",
    priority = 1000,  -- REQUIRED: Ensures Snacks loads before other plugins
    lazy = false,     -- REQUIRED: Disables lazy loading for proper functionality
    config = function()
        require("snacks").setup({
            opts = {
              -- Enable the modules you want to use
              bigfile = { enabled = true },
              dashboard = { enabled = true },
              explorer = { enabled = true },
              indent = { enabled = true },
              input = { enabled = true },
              notifier = { enabled = true },
              picker = { enabled = true },
              quickfile = { enabled = true },
              scope = { enabled = true },
              scroll = { enabled = true },
              statuscolumn = { enabled = true },
              words = { enabled = true },
              terminal = { enabled = true },  -- For terminal features
            },
        })
    end,
}

