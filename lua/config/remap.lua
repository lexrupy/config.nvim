vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Lex)
vim.keymap.set("n", "<leader>bd", "<cmd> bd <cr>")
vim.keymap.set("n", "<leader>c", "<cmd> bd <cr>")
vim.keymap.set("n", "Ç", ":")
vim.keymap.set("n", "ç", ":")
vim.keymap.set("n", "<tab>", "<cmd> bn <cr>")
vim.keymap.set("n", "<s-tab>", "<cmd> bp <cr>")


vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-l>", "<c-w>l")
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-k>", "<c-w>k")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
