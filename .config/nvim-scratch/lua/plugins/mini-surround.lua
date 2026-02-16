return {
    "nvim-mini/mini.surround",
    opts = function(_, opts)
        opts.mappings = {
             add = "<leader>sa",
              delete = "<leader>sd",
              find = "<leader>sf",
              find_left = "<leader>sF",
              highlight = "<leader>sh",
              replace = "<leader>sr",
              update_n_lines = "<leader>sn",
        }
        require("mini.surround").setup()
    end
}
