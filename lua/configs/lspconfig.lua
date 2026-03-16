require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "pyright", "eslint" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true,
  float = { border = "rounded", source = true },
})
