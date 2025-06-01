-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
local lspconfig = require 'lspconfig'

return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
      }
    end,
  },
  { 'mellow-theme/mellow.nvim' },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        theme = 'dragon', -- Use the dragon variant
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none', -- Makes the gutter transparent
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            -- Keep line numbers slightly dimmed but visible
            LineNr = { fg = theme.ui.special, bold = true, bg = 'none' },
            -- Keep current line number highlighted
            CursorLineNr = { fg = theme.ui.fg_dim, bg = 'none' },

            -- Make sign column background match editor
            SignColumn = { bg = 'none' },
          }
        end,
      }
    end,
    lazy = false, -- Load immediately
    priority = 1000, -- High priority to load before other UI elements
  },
  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  lspconfig.eslint.setup {
    settings = {
      format = true, -- Enable formatting
    },
  },
}
