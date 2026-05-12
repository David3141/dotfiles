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
      ruby_lsp = {
        mason = false,
        enabled = true,
      },
      rubocop = {
        mason = false,
        enabled = false,
      },
    },
  },
}
