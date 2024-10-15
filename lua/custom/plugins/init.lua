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
    'sho-87/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
  },
  { 'aktersnurra/no-clown-fiesta.nvim' },

  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
      }
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').load()
    end,
  },
}
