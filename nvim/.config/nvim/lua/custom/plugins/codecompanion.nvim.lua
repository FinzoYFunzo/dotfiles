-- Code Companion
return {
  'olimorris/codecompanion.nvim',
  event = 'BufEnter',
  opts = {
    language = 'Spanish',
    -- Strategies
    strategies = {
      chat = {
        tools = {
          opts = {
            default_tools = {
              'insert_edit_into_file',
            },
          },
        },
        adapter = {
          name = 'copilot',
          model = 'gpt-4o',
        },
      },
      inline = { adapter = 'copilot' },
      agent = { adapter = 'copilot' },
    },
    -- Display
    display = {
      chat = {
        window = {
          width = 0.35,
        },
      },
    },
    -- Memory
    memory = {
      opts = {
        chat = {
          default_memory = 'default',
        },
      },
    },
    adapters = {
      http = {
        copilot = function()
          return require('codecompanion.adapters').extend('copilot', {
            schema = {
              model = {
                default = 'gpt-5-codex',
              },
            },
          })
        end,
      },
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  vim.keymap.set('n', '<leader>ci', '<Cmd>CodeCompanion<CR>', { desc = '[C]ode Companion [I]nline' }), -- WARN: Requiere famiu/bufdelete.nvim
  vim.keymap.set('n', '<leader>cc', '<Cmd>CodeCompanionChat Toggle<CR>', { desc = '[C]ode Companion [C]hat' }),
}
