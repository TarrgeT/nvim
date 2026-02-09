return {
  'xero/evangelion.nvim',
  branch = 'dev',
  dependencies = {
    'rktjmp/lush.nvim',
    'rktjmp/shipwright.nvim',
  },
  lazy = false,
  priority = 1000,
  config = function()
    require('evangelion').setup {
      transparent = false,
    }
    vim.cmd.colorscheme 'evangelion'
  end,
}
