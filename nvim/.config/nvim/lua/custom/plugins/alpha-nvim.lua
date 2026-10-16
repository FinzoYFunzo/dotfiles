-- Greeter
local logo2 = [[


                                          ▓██            ▓██                        ▒▓█
                                           ▓██          ▓██                  ▓▓▓██████
          ▒▓▓█████████████████              ▓██        ▓█            ▓▓█████████▓▓▓
    ▓████████            ▒▒▓▓▓█████          ▓█       ▓█          █████▓▓
                               ▒▒▓█           ▓█     ▓█         ▓▓█░░
                                 ▓█           ▓█    ▓█          ▒▓█░
                                 ▓█            ▓█  ▓█           ▒█▓
                                 ▓▓█            ▓██▓█           ░█░
                                 ▒▓█            ▒▓▓█           ░▓█░
                                  ▓██████████████▓█        ▒▒▒▓▓▓█░
                                            ▒▓▓▓▓▓███████████████▓
  ,          _   _                               ▓▓█                         ____
 /|   |     | | | |                              ▓██                        (|   \       o       |
  |___|  _  | | | |  __                          ▓█░                         |    | ,_        _  |
  |   |\|/  |/  |/  /  \_                        ▓█░                        _|    |/  |  |  |/ \_|
  |   |/|__/|__/|__/\__/                         ▓█░                       (/\___/    |_/|_/|__/ o
                                                 ▓█░                                       /|
                                                ▒▓█░                                       \|
                                        ▒▓███████████████████████
                                ██████████▓░                   ░▓█
                                ▓█▓                             ░▓█
                                ░█▓                             ░▓█
                                ░▓█                             ░▓█░
                                ░▓█                              ▒█▒
         ████▓▓▒                ░▓█                              ▒▓▓█████████████████████
           ░▒████████████████████▓▓
]]
return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    require 'alpha.term'

    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = vim.split(logo2, '\n')

    dashboard.section.buttons.val = {
      {
        type = 'button',
        val = '[ ]  ',
        on_press = function()
          vim.cmd 'ene | startinsert'
        end,
        opts = {
          hl = 'GruvboxYellow',
          -- hl_shortcut = 'GruvboxYellow',
          position = 'center',
          cursor = 1,
        },
      },

      {
        type = 'button',
        val = '[ ]  󰅚', --[]
        on_press = function()
          vim.cmd 'qa'
        end,
        opts = {
          hl = 'GruvboxYellow',
          -- hl_shortcut = 'GruvboxYellow',
          position = 'center',
          cursor = 1,
        },
      },

      -- {
      --   type = 'terminal',
      --   command = 'ls ./',
      --   width = 100,
      --   height = 4,
      -- },
    }

    -- local handle = io.popen 'fortune'
    -- local fortune = handle:read '*a'
    -- handle:close()
    -- dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    alpha.setup(dashboard.config)
  end,
}
