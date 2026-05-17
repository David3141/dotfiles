return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = true,
    },
    inlay_hints = {
      enabled = false,
    },
    servers = {
      rubocop = {
        enabled = false,
        mason = false,
      },
    },
  },
}
