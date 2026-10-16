-- INIT
return {
  -- Multiple cursors
  {
    'brenton-leighton/multiple-cursors.nvim',
    event = 'BufEnter',
    version = '*', -- Use the latest tagged version
    opts = {}, -- This causes the plugin setup function to be called
    keys = {

      { '<C-S-Up>', '<Cmd>MultipleCursorsAddUp<CR>', mode = { 'i' }, desc = 'Add cursor and move up' },
      { '<C-S-Down>', '<Cmd>MultipleCursorsAddDown<CR>', mode = { 'i' }, desc = 'Add cursor and move down' },

      { '<C-LeftMouse>', '<Cmd>MultipleCursorsMouseAddDelete<CR>', mode = { 'n', 'i' }, desc = 'Add or remove cursor' },
    },
  },
  -- Identation lines
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufEnter',
    main = 'ibl',
    opts = {},
  },
  -- Auto indent
  -- {
  --   'NMAC427/guess-indent.nvim',
  --   opts = {},
  -- },
  -- RGB Colors
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufRead',
    opts = {},
  },
  -- Markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    event = 'BufEnter',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      render_modes = { 'n', 'c', 't' },
      anti_conceal = {
        enabled = false,
      },
    },
    ft = { 'markdown', 'codecompanion' },
  },
  -- Quick Comment
  {
    'numToStr/Comment.nvim',
    opts = {},

    -- Toggle in VISUAL mode
    vim.keymap.set({ 'x', 'n', 'v' }, '<F12>', '<Plug>(comment_toggle_linewise_visual)'),
  },
}
