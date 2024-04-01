local ghregex=[[\(^\|\s\s\)\zs\.\S\+]]

vim.g.netrw_banner=0
vim.g.netrw_browse_split=4
vim.g.netrw_altv=1
vim.g.netrw_liststyle=3
vim.g.netrw_winsize = 20
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'
-- vim.g.netrw_list_hide=netrw_gitignore#Hide()
-- vim.g.netrw_list_hide +=','.. ghregex
vim.g.netrw_hide = 1
vim.g.netrw_bufsettings = 'noma nomod nobl nowrap ro'


-- local function netrw_mapping()
--   local bufmap = function(lhs, rhs)
--     local opts = {buffer = true, remap = true}
--     vim.keymap.set('n', lhs, rhs, opts)
--   end
-- 
--   -- close window
--   bufmap('<leader>dd', ':Lexplore<CR>')
--   bufmap('<leader>da', ':Lexplore<CR>')
-- 
--   -- Better navigation
--   bufmap('H', 'u')
--   bufmap('h', '-^')
--   bufmap('l', '<CR>')
--   bufmap('L', '<CR>:Lexplore<CR>')
-- 
--   -- Toggle dotfiles
--   bufmap('.', 'gh')
-- end
-- 
-- local user_cmds = vim.api.nvim_create_augroup('user_cmds', {clear = true})
-- vim.api.nvim_create_autocmd('filetype', {
--   pattern = 'netrw',
--   group = user_cmds,
--   desc = 'Keybindings for netrw',
--   callback = netrw_mapping
-- })
