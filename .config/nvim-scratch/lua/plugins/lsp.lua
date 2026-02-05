return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      vim.lsp.enable({
        "gopls",
        "rust_analyzer",
        "ts_ls",
        "pyright",
      })
    end,
  },
}
