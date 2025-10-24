-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "gh", "^", { desc = "Go to first char in line" })
vim.keymap.set("n", "gl", "$", { desc = "Go to last char in line" })
