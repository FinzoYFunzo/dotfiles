-- NOTE: Para volver a seleccionar las lineas al identar
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and keep selection' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and keep selection' })

-- NOTE: Configuracion general para la navegacion entre ventana en Nvim
vim.keymap.set({ 'n', 'i', 'v' }, '<A-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set({ 'n', 'i', 'v' }, '<A-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set({ 'n', 'i', 'v' }, '<A-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 'n', 'i', 'v' }, '<A-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set({ 'n', 'i', 'v' }, '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set({ 'n', 'i', 'v' }, '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set({ 'n', 'i', 'v' }, '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 'n', 'i', 'v' }, '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-Left>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-Right>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-Down>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-Up>', '<C-w>K', { desc = 'Move window to the upper' })

vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-l>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-h>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set({ 'n', 'i', 'v' }, '<S-A-k>', '<C-w>K', { desc = 'Move window to the upper' })

vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-Left>', '<C-w><', { desc = 'Decrease width' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-Right>', '<C-w>>', { desc = 'Increase width' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-Down>', '<C-w>-', { desc = 'Decrease heigth' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-Up>', '<C-w>+', { desc = 'Increase heigth' })

vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-h>', '<C-w><', { desc = 'Decrease width' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-l>', '<C-w>>', { desc = 'Increase width' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-j>', '<C-w>-', { desc = 'Decrease heigth' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-A-k>', '<C-w>+', { desc = 'Increase heigth' })

-- NOTE: Move linea vscode style
vim.keymap.set({ 'v' }, '<C-S-Down>', ":m '>+1<CR>gv=gv", { desc = 'Move lines up', noremap = true })
vim.keymap.set({ 'v' }, '<C-S-Up>', ":m '<-2<CR>gv=gv", { desc = 'Move lines down', noremap = true })

-- NOTE: Show error in floating windows
-- vim.keymap.set({ 'v', 'n', 'x' }, 'se', function()
--   vim.diagnostic.open_float()
-- end, { desc = 'Show errors in floating windows' })

-- NOTE: Scroll keymaps
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<C-Up>', '<Cmd>normal! 4k<CR>', { desc = 'Scroll up 4 lines' })
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<C-Down>', '<Cmd>normal! 4j<CR>', { desc = 'Scroll down 4 lines' })
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<PageUp>', '<Cmd>normal! 8kzz<CR>', { desc = 'Scroll up 4 lines' })
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<PageDown>', '<Cmd>normal! 8jzz<CR>', { desc = 'Scroll down 4 lines' })

vim.keymap.set({ 'n', 'v', 't' }, '<C-k>', '<Cmd>normal! 4k<CR>', { desc = 'Scroll up 4 lines' })
vim.keymap.set({ 'n', 'v', 't' }, '<C-j>', '<Cmd>normal! 4j<CR>', { desc = 'Scroll down 4 lines' })
vim.keymap.set({ 'n', 'v', 't' }, '<C-h>', '<Cmd>normal! 4k<CR>', { desc = 'Scroll up 4 lines' })
vim.keymap.set({ 'n', 'v', 't' }, '<C-Shl>', '<Cmd>normal! 4j<CR>', { desc = 'Scroll down 4 lines' })
vim.keymap.set({ 'n', 'v', 't' }, '<C-S-k>', '<Cmd>normal! 5kzz<CR>', { desc = 'Scroll up 4 lines' })
vim.keymap.set({ 'n', 'v', 't' }, '<C-S-j>', '<Cmd>normal! 5jzz<CR>', { desc = 'Scroll down 4 lines' })

vim.keymap.set({ 'n', 'v' }, '<Home>', '^', { desc = 'Go to first non-blank character' })
vim.keymap.set('i', '<Home>', '<Esc>^i', { desc = 'Go to first non-blank character' })

-- vim.keymap.set({ 'n' }, 'st', function()
--   vim.lsp.buf.hover {
--     border = vim.g.border,
--   }
-- end, { desc = '[S]how [T]ype' })

vim.keymap.set('n', '<leader>bw', '<Cmd>Bdelete<CR>', { desc = '[B]uffer Close' }) -- WARN: Requiere famiu/bufdelete.nvim
vim.keymap.set('n', '<leader>bd', '<Cmd>bdelete<CR>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>br', '<Cmd>BufferLineTabRename', { desc = '[B]uffer [R]ename Tab' })

vim.keymap.set('i', '<A-CR>', '<CR><Up><End><CR>', { desc = 'Expando brakets' })

--NOTE: Toggle terminal focus
vim.keymap.set({ 't' }, '<C-t>', '<Esc><C-w><C-k>i', { desc = 'Toggle terminal focus 1' })
vim.keymap.set({ 'n', 'i' }, '<C-t>', '<Esc><C-w><C-j>i', { desc = 'Toggle terminal focus 2' })

-- Tabs
local function goto_or_create_tab(n)
  local total = vim.fn.tabpagenr '$'

  if n <= total then
    vim.cmd('tabn ' .. n)
  else
    -- Crear tabs extra hasta llegar al número solicitado
    for _ = total + 1, n do
      vim.cmd 'tabnew'
    end
    vim.cmd('tabn ' .. n)
  end
end

for i = 1, 9 do
  vim.keymap.set('n', '<A-' .. i .. '>', function()
    goto_or_create_tab(i)
  end)
end

-- Scroll
