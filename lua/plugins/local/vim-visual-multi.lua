return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false, -- Load immediately at startup
    priority = 100, -- Load earlier
    init = function()
      vim.g.VM_maps = { 
        ["Find Under"] = "<C-d>"
      }
    end,
  },
}