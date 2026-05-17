-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.scrolloff = 10

-- Acoid conflicts between Biome and Prettier
vim.g.lazyvim_prettier_needs_config = true

local function in_container()
  return vim.env.REMOTE_CONTAINERS == "true" -- set by VS Code / devpod devcontainers
    or vim.env.CODESPACES == "true" -- GitHub Codespaces, just in case
    or vim.uv.fs_stat("/.dockerenv") ~= nil -- generic Docker fallback
end

-- Use system clipboard from within devcontainers
if in_container() then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
end
