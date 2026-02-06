vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

-- window commands
vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true })

-- quit!
vim.keymap.set('n', '<leader>qq', '<Cmd>:qa<cr>')

-- buffer
vim.keymap.set('n', '<leader>bd', '<Cmd>bd<cr>', { desc = "Close buffer" })

-- lsp navigation
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { desc = "Go to type definition" })

-- lsp error navigation
vim.keymap.set('n', ']e', function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Next LSP error" })
vim.keymap.set('n', '[e', function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Prev LSP error" })
