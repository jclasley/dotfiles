return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "go", "gomod", "gosum", "gowork", "javascript",
          "rust", "typescript", "tsx", "python",
          "lua", "vim", "vimdoc", "query",
          "bash", "json", "yaml", "toml", "markdown", "markdown_inline",
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
