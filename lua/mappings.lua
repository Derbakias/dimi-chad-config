require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Toggle maximize window
local zoomed = false
local last_win = nil
local last_width, last_height = nil, nil

local function toggle_zoom()
    local win = vim.api.nvim_get_current_win()
    if not zoomed then
        -- Save current window size
        last_win = win
        last_width = vim.api.nvim_win_get_width(win)
        last_height = vim.api.nvim_win_get_height(win)
        -- Maximize
        vim.cmd('wincmd _')  -- maximize height
        vim.cmd('wincmd |')  -- maximize width
        zoomed = true
    else
        -- Restore previous size
        if last_win and vim.api.nvim_win_is_valid(last_win) then
            vim.api.nvim_win_set_width(last_win, last_width)
            vim.api.nvim_win_set_height(last_win, last_height)
        end
        zoomed = false
    end
end

-- Map to Space + z in normal mode
vim.keymap.set('n', '<Space>z', toggle_zoom, { noremap = true, silent = true, desc = "Toggle maximize window" })
