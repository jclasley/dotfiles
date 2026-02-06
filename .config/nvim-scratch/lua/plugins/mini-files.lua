return {
    'nvim-mini/mini.files',
    config = function()
        require('mini.files').setup()
    end,
    keys = {
        {"-", function() require('mini.files').open(vim.api.nvim_buf_get_name(0)) end, desc = "Open file explorer"},
    },
}
