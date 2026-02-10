return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.type = 'text'
    dashboard.section.header.val = {
      [[                                                     ]],
      [[  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
      [[  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
      [[ ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
      [[ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
      [[ ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
      [[ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
      [[ ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
      [[    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
      [[          ░    ░  ░    ░ ░        ░   ░         ░    ]],
      [[                                 ░                   ]],
      [[                                                     ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '󰍉  Find file', ":lua require('fzf-lua').files() <CR>"),
      dashboard.button('t', '  Browse cwd', ':NvimTreeOpen<CR>'),
      dashboard.button('r', '  Browse src', ':e ~/.local/src/<CR>'),
      dashboard.button('s', '󰯂  Browse scripts', ':e ~/scripts/<CR>'),
      dashboard.button('c', '  Config', ':e ~/.config/nvim/<CR>'),
      dashboard.button('m', '  Mappings', ':e ~/.config/nvim/lua/config/mappings.lua<CR>'),
      dashboard.button('p', '  Plugins', ':PlugInstall<CR>'),
      dashboard.button('q', '󰅙  Quit', ':q!<CR>'),
    }
    local lazy_stats = require('lazy').stats()
    dashboard.section.footer.val = {
      'Congratulations!',
    }
    alpha.setup(dashboard.config)
  end,
}
