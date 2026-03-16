return {
  { "nvzone/volt", lazy = true },

  {
    "nvzone/menu",
    lazy = false,
    config = function()
      vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
        require("menu.utils").delete_old_menus()
        vim.cmd.exec '"normal! \\<RightMouse>"'
        local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
        local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"
        require("menu").open(options, { mouse = true })
      end, { desc = "Open context menu" })

      vim.keymap.set("n", "<C-t>", function()
        require("menu").open("default")
      end, { desc = "Open menu" })
    end,
  },
}
