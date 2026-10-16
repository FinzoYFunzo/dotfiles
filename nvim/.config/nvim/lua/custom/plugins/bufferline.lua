-- Better tabs
return {
  'akinsho/bufferline.nvim',
  version = '*',
  event = 'VimEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'famiu/bufdelete.nvim',
  },
  opts = {
    options = {
      separator_style = 'slope',
      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' },
      },
    },
  },

  -- NOTE: Buffer navigation config
  vim.keymap.set({ 'n', 'v', 'x' }, '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Switch buffer left', silent = true, noremap = true }),
  vim.keymap.set({ 'n', 'v', 'x' }, '<S-l>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Switch buffer right', silent = true, noremap = true }),
  vim.keymap.set({ 'n', 'v', 'x' }, '<C-S-h>', '<Cmd>BufferLineMovePrev<CR>', { desc = 'Switch tab left', silent = true, noremap = true }),
  vim.keymap.set({ 'n', 'v', 'x' }, '<C-S-l>', '<Cmd>BufferLineMoveNext<CR>', { desc = 'Move tab right', silent = true, noremap = true }),
}
