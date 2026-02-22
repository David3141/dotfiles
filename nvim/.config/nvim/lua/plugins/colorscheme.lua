-- return {}
-- return {
--   {
--     "sainnhe/sonokai",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.g.sonokai_enable_italic = true
--       vim.g.sonokai_style = "andromeda"
--       vim.cmd.colorscheme("sonokai")
--     end,
--   },
--   {
--
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "sonokai",
--     },
--   },
-- }
return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      filter = "octagon",
      -- override = function(c)
      --   local hp = require("monokai-pro.colors")
      --   local common_fg = hp.lighten(c.sideBar.foreground, 30)
      --   return {
      --     SnacksPicker = { bg = c.editor.background, fg = common_fg },
      --     SnacksPickerBorder = { bg = c.editor.background, fg = c.tab.unfocusedActiveBorder },
      --     SnacksPickerTree = { fg = c.editorLineNumber.foreground },
      --     SnacksPickerDirectory = { fg = c.editorLineNumber.foreground },
      --     NonText = { fg = c.base.dimmed3 }, -- not sure if this should be broken into all hl groups importing NonText
      --   }
      -- end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}

-- return {
--   { "catppuccin/nvim", opts = { flavour = "mocha" } },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }

-- return {
--   { "rebelot/kanagawa.nvim" },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "kanagawa",
--     },
--   },
-- }
