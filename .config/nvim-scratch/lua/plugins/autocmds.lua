-- set tab width for .[jt]sx? files

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

return {}
