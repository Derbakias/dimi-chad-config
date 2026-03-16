return {
  { import = "plugins.local.typr" },
  { import = "plugins.local.vim-visual-multi" },
  { import = "plugins.local.menu" },
  { import = "plugins.local.snacks" },
  { import = "plugins.local.mason-tools" },
  { import = "plugins.local.neoscroll" },
  { import = "plugins.local.hardtime" },
  { import = "plugins.local.codediff" },
  { import = "plugins.local.markview" },
  { import = "plugins.override.nvim-treesitter" },
  { import = "plugins.spec.autopairs" },
  
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
}
