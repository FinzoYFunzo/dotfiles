-- Status line
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
    { 'AndreM222/copilot-lualine' },
  },

  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      always_show_tabline = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
        refresh_time = 16, -- ~60fps
        events = {
          'WinEnter',
          'BufEnter',
          'BufWritePost',
          'SessionLoadPost',
          'FileChangedShellPost',
          'VimResized',
          'Filetype',
          'CursorMoved',
          'CursorMovedI',
          'ModeChanged',
        },
      },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          color = function()
            if vim.fn.mode() == 't' then
              return { fg = '#282828', bg = '#b8bb26', bold = true }
            else
              return nil
            end
          end,
          separator = { right = '' },
        },
      },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = {
        {
          'copilot',
          on_click = function(_, button)
            if button == 'r' then
              if vim.g.copilot_enabled then
                vim.cmd 'Copilot disable'
              else
                vim.cmd 'Copilot enable'
              end
            elseif button == 'l' then
              vim.cmd 'Copilot toggle'
            end
          end,
        },
      },
      lualine_y = { 'filetype' },
      lualine_z = { 'location' },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  },
}
