-- Copilot
return {
  'zbirenbaum/copilot.lua',
  event = 'BufEnter',
  dependencies = {
    { 'copilotlsp-nvim/copilot-lsp' },
  },
  opts = {},
  config = function()
    require('copilot').setup {}
    vim.cmd 'Copilot disable'
  end,
}
