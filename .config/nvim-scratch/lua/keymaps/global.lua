vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

-- window commands
vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true })

-- quit!
vim.keymap.set('n', '<leader>qq', '<Cmd>:qa<cr>')
