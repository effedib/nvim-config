-- Source - https://stackoverflow.com/a/79656109
-- Posted by Jo Totland
-- Retrieved 2026-03-02, License - CC BY-SA 4.0

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- Crea o modifica il file lua/plugins/mason.lua
return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "basedpyright", -- LSP per Python
      "ruff", -- Formatter/Linter
    },
  },
}
