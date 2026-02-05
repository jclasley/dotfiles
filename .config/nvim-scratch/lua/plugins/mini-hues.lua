return {
  {
    "echasnovski/mini.hues",
    lazy = false,
    priority = 1000,
    config = function()
      require("mini.hues").setup({ background = "#1a1a2e", foreground = "#c0c0d0" })
    end,
  },
}
