return {
	'nvim-mini/mini.pick',
	opts = {},
	keys = {
		{ "<leader>fp", function() require("mini.pick").builtin.files({ tool = "git" }) end, desc = "Find files (git)" },
		{ "<leader>ff", function() require("mini.pick").builtin.files() end, desc = "Find files" },
		{ "<leader>fs", function() require("mini.pick").builtin.grep() end, desc = "Grep" },
		{
			"<leader>bb",
			function()
				local wipeout_cur = function()
					vim.api.nvim_buf_delete(MiniPick.get_picker_matches().current.bufnr, {})
				end
				require("mini.pick").builtin.buffers(nil, {
					mappings = { wipeout = { char = "<C-d>", func = wipeout_cur } },
				})
			end,
			desc = "Buffers",
		},
	},
}

