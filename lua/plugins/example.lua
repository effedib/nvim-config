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

  -- 3. SNACKS (Per vedere il file .env che cercavi prima)
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        hidden = true,
        filters = {
          custom = function(name)
            if name == ".env" then
              return true
            end
            if name:sub(1, 1) == "." then
              return false
            end
            return true
          end,
        },
      },
    },
  },
}
