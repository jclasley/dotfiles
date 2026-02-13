return {
	"ms-jpq/coq_nvim",
	branch = "coq",
	lazy = false,
	init = function()
		vim.g.coq_settings = {
			auto_start = "shut-up",
			display = {
				preview = {
					border = "rounded",
				},
			},
		}
	end,
	dependencies = {
		{ "ms-jpq/coq.artifacts", branch = "artifacts" },
	},
}
