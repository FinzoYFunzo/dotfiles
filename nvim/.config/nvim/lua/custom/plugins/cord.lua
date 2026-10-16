-- Discord status
return {
  'vyfor/cord.nvim',
  ---@type CordConfig
  opts = {
    display = {
      theme = 'minecraft',
    },
    text = {
      default = nil,
      workspace = function(opts)
        return 'En ' .. opts.workspace
      end,
      viewing = function(opts)
        return 'Viendo ' .. opts.filename
      end,
      editing = function(opts)
        return 'Hackeando ' .. opts.filename
      end,
      file_browser = function(opts)
        return 'Buscando en ' .. opts.name
      end,
      plugin_manager = function(opts)
        return 'Articulando plugins en ' .. opts.name
      end,
      lsp = function(opts)
        return 'Configurando LSP en ' .. opts.name
      end,
      docs = function(opts)
        return 'Leyendo ' .. opts.name
      end,
      vcs = function(opts)
        return 'Commiteando en ' .. opts.name
      end,
      notes = function(opts)
        return 'Tomando notas en ' .. opts.name
      end,
      debug = function(opts)
        return 'Debuggeando ' .. opts.name
      end,
      test = function(opts)
        return 'Testeando ' .. opts.name
      end,
      diagnostics = function(opts)
        return 'Arreglando problemas en ' .. opts.name
      end,
      games = function(opts)
        return 'Jugando ' .. opts.name
      end,
      terminal = function(opts)
        return 'Ejecutando comandos en' .. opts.name
      end,
      dashboard = 'Casita',
    },
  },
}
