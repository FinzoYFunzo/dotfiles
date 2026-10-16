-- Folds
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  opts = {
    provider_selector = function(bufnr, filetype, buftype)
      -- Usa Treesitter y LSP como proveedores de plegado
      return { 'lsp', 'indent' }
    end,
  },
  config = function(_, opts)
    require('ufo').setup(opts)

    -- Keymaps (van aquí, no en el root)
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  end,
}
