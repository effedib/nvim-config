-- formatter born for html
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Usa prettier per HTML, ma anche per CSS e JS se ti serve
      html = { "prettier" },
      css = { "prettier" },
      javascript = { "prettier" },
    },
    -- Formattazione automatica al salvataggio
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
