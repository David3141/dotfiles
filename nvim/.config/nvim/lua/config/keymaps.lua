-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Change current word in a repeatable manner
vim.keymap.set("n", "<leader>cn", "*``cgn", { noremap = true, silent = true, desc = "Change next occurence" })
vim.keymap.set("n", "<leader>cN", "*``cgN", { noremap = true, silent = true, desc = "Change previous occurence" })
