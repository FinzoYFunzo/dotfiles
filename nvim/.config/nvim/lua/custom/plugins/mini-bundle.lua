-- Mini Collection
return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    --https://neovim.io/doc/user/options.html#'statusline'

    -- NOTE: Esto de aqui abajo es un ejemplo de como configurar el statusline
    --
    -- local statusline = require 'mini.statusline'
    -- -- set use_icons to true if you have a Nerd Font
    -- statusline.setup {
    --   content = { -- Contenido para la ventana activa
    --     active = function()
    --       local mode, mode_hl = MiniStatusline.section_mode { trunc_width = 120 }
    --       local git = MiniStatusline.section_git { trunc_width = 40 }
    --       local diff = MiniStatusline.section_diff { trunc_width = 75 }
    --       local diagnostics = MiniStatusline.section_diagnostics { trunc_width = 75 }
    --       local lsp = MiniStatusline.section_lsp { trunc_width = 75 }
    --       local filename = MiniStatusline.section_filename { trunc_width = 140 }
    --       local fileinfo = MiniStatusline.section_fileinfo { trunc_width = 120 }
    --       local location = MiniStatusline.section_location { trunc_width = 75 }
    --       local search = MiniStatusline.section_searchcount { trunc_width = 75 }
    --
    --       return MiniStatusline.combine_groups {
    --         { hl = mode_hl, strings = { mode } },
    --         { hl = 'MiniStatuslineDevinfo', strings = { git } },
    --         --{ hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics, lsp } },
    --         '%<',
    --         '%=',
    --         '%t',
    --         -- { hl = 'MiniStatuslineFilename', strings = { filename } },
    --         '%=',
    --         -- { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
    --         { hl = mode_hl, strings = { search, location } },
    --       }
    --     end,
    --
    --     -- Contenido para las ventanas inactivas
    --     inactive = function()
    --       local filename = MiniStatusline.section_filename { trunc_width = 140 }
    --       return MiniStatusline.combine_groups {
    --         { hl = 'MiniStatuslineInactive', strings = { filename } },
    --       }
    --     end,
    --   },
    --   use_icons = vim.g.have_nerd_font,
    -- }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN

    ---@diagnostic disable-next-line: duplicate-set-field
    -- statusline.section_location = function()
    --   return '%2l:%-2v'
    -- end

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
