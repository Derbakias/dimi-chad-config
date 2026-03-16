return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- LSP servers
        "typescript-language-server",
        "pyright",
        "eslint-lsp",
        "emmet-language-server",
        "emmet-ls",
        -- Formatters / linters
        "prettier",
        "black",
        "stylua",
        "eslint_d",
      },
      auto_update = false,
      run_on_start = true,
    },
  },
}
