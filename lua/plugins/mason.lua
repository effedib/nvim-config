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
