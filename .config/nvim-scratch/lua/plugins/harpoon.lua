
return {
	{

	},
	{
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		dependencies = {'nvim-lua/plenary.nvim'},
		config = function()
			local harpoon = require('harpoon')
			harpoon:setup()
		end,
		keys = function()
			local harpoon = require('harpoon')
			local keys = {
				{
					"<leader>hh", 
					function()
						harpoon.ui:toggle_quick_menu(harpoon:list())
					end,
					desc = "Menu"
				},
				{
					"<leader>ha",
					function() harpoon:list():add() end,
					desc = "Add"
				}
			}

			return keys
		end
	}
}
