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
  },
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
}
