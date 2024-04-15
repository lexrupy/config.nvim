-- Set leader key to <space>
vim.g.mapleader = " "

-- Remap ç to something useful on pt-BR Keyboards
vim.keymap.set("n", "Ç", ":")
vim.keymap.set("n", "ç", ":")
vim.keymap.set("n", "<leader>c", "<cmd> bd <cr>", { desc = "Close current buffer" })
vim.keymap.set("n", "<tab>", "<cmd> bn <cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<s-tab>", "<cmd> bp <cr>", { desc = "Previous Buffer" })

-- Better splits navigation
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-l>", "<c-w>l")
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-k>", "<c-w>k")

--  Prevent loosing visual selection when indenting
vim.keymap.set("v",">",">gv", { remap = false, desc= "Indent Selection" })
vim.keymap.set("v","<","<gv", { remap = false, desc= "Unindent Selection" })
-- Also indent with tab and shift-tab
vim.keymap.set("v","<tab>",">gv", { remap = false, desc= "Indent Selection" })
vim.keymap.set("v","<s-tab>","<gv", { remap = false, desc= "Unindent Selection" })

-- Split Changes
vim.keymap.set("n",  "<c-w>,", "<c-w>t<c-w>H", { desc = "Change Split to Vertical"})
vim.keymap.set("n",  "<c-w>.", "<c-w>t<c-w>K", { desc = "Change Split to Horizontal"})

-- When moving pages, keep cursor line on center
vim.keymap.set("n",  "<c-u>" , "<c-u>zz", { desc = "Move Half Page UP"})
vim.keymap.set("n",  "<c-d>" , "<c-d>zz", { desc = "Move Half Page DOWN"})

-- Display current file complete path
vim.keymap.set("n",  "<c-g>" , "1<c-g>", { desc = "Display Current Information (path)"})

-- Paste tricks
vim.keymap.set({"n","v"},  ",p", '"0p', { desc="Paste last yanked text after cursor"})
vim.keymap.set({"n","v"},  ",P", '"0P', { desc="Paste last yanked text before cursor"})

--
vim.keymap.set("i", "<C-o>", "<C-\\><C-o>")

-- Telescope Keymaps
vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { desc = 'Find Help' })
vim.keymap.set('n', '<leader>fk', "<cmd>Telescope keymaps<cr>", { desc = 'Find Keymaps' })
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fs', "<cmd>Telescope builtin<cr>", { desc = 'Find Selected' })
vim.keymap.set('n', '<leader>fw', "<cmd>Telescope live_grep<cr>", { desc = 'Find Word' })
vim.keymap.set('n', '<leader>fc', "<cmd>Telescope grep_string<cr>", { desc = 'Find Word Under Cursor' })
vim.keymap.set('n', '<leader>fd', "<cmd>Telescope diagnostics<cr>", { desc = 'Find Diagnostics' })
vim.keymap.set('n', '<leader>fr', "<cmd>Telescope resume<cr>", { desc = 'Find Resume' })
vim.keymap.set('n', '<leader>f.', "<cmd>Telescope oldfiles<cr>", { desc = 'Find Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', "<cmd>Telescope buffers<cr>", { desc = 'Find existing buffers' })



-- Lua
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<CR>")
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>")
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>")
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>")
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>")
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references<cr>")
