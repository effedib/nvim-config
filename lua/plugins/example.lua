return {
  -- 1. CONFIGURAZIONE FORMATTER (Il cuore del tuo problema)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettierd", "prettier", stop_after_first = true },
        css = { "prettierd", "prettier", stop_after_first = true },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        htmldjango = { "djlint", stop_after_first = true },
      },
      formatters = {
        djlint = {
          args = { "--reformat", "--indent", "2", "-" },
        },
      },
    },
  },

  -- 2. CHIUSURA AUTOMATICA TAG (Comodissimo per HTML)
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  -- transparent_background
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   opts = {
  --     transparent_background = true, -- Questo buca lo sfondo principale
  --     integrations = {
  --       mini = true,
  --       snacks = true, -- Rende trasparenti i dashboard e i popup di Snacks
  --       telescope = {
  --         enabled = true,
  --         style = "nvchad", -- Stile pulito per le finestre di ricerca
  --       },
  --       neotree = true, -- Trasparenza per l'albero dei file
  --       mason = true, -- Trasparenza per il menu di Mason
  --       which_key = true,
  --       render_markdown = true,
  --     },
  --     -- Questa funzione forza la trasparenza su elementi che a volte resistono
  --     custom_highlights = function(colors)
  --       return {
  --         -- NormalFloat gestisce i popup (come le info di LSP o le finestre Snacks)
  --         NormalFloat = { bg = "none" },
  --         FloatBorder = { bg = "none", fg = colors.blue },
  --         -- CursorLine rende la riga dove ti trovi leggermente visibile ma trasparente
  --         CursorLine = { bg = colors.surface0 },
  --         -- Pmenu è il menu del completamento automatico
  --         Pmenu = { bg = "none" },
  --         PmenuSel = { bg = colors.surface1, fg = "none" },
  --       }
  --     end,
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
