return {
  {
    "nvzone/typr",
    dependencies = { "nvzone/volt" },
    cmd = { "Typr", "TyprStats" },
    opts = {},
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "typr",
        callback = function()
          local bufnr = vim.api.nvim_get_current_buf()
          vim.schedule(function()
            vim.bo[bufnr].omnifunc = ""
            if package.loaded["cmp"] then
              require("cmp").setup.buffer({ enabled = false })
            end
            vim.b[bufnr].lsp_enabled = false
          end)
        end,
      })
    end,
  },
}
