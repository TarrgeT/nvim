return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    view = { width = 28 },
    renderer = { group_empty = true },
    filters = { dotfiles = false },
  },
  config = function(_, opts)
    require('nvim-tree').setup(opts)
  end,
}
