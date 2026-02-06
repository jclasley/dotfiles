return {
    'nvim-mini/mini.files',
    config = function()
        require('mini.files').setup()
    end,
    keys = {
        {"-", function() require('mini.files').open() end, nil},
    },
}
