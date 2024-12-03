-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  { 'rktjmp/lush.nvim' },
  { 'zenbones-theme/zenbones.nvim', requires = 'rktjmp/lush.nvim' },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
      }
    end,
  },
  {
    'Mofiqul/vscode.nvim',
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      color_overrides = {
        mocha = {
          base = '#181818',
          mantle = '#181818',
          crust = '#181818',
        },
      },
    },
  },
  { 'mellow-theme/mellow.nvim' },
}
