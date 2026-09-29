-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set leader key to space (should be set by LazyVim)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Remappings/Aliases for German Keyboard layout
require("config.german-keymap-aliases")

-- Make Y consistent with D and C (yank to end of line)
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Method/function navigation
vim.keymap.set("n", "<leader>m", "]m", { desc = "Next method/function" })
vim.keymap.set("n", "<leader>M", "[m", { desc = "Previous method/function" })

-- Unified window navigation (Ctrl+hjkl) - explicitly set for consistency
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Alternative completion trigger (avoiding CTRL-Space conflict with tmux)
-- Use CTRL-N for manual completion trigger
-- This is already a default vim completion key, so it should work out of the box

-- Window resizing with Ctrl+Shift+hjkl
vim.keymap.set("n", "<C-S-h>", "<C-w><", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-S-l>", "<C-w>>", { desc = "Increase window width" })
vim.keymap.set("n", "<C-S-j>", "<C-w>-", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-S-k>", "<C-w>+", { desc = "Increase window height" })

-- Window resizing with Ctrl + arrow keys (unified with tmux)
