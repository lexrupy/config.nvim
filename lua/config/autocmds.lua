-- Disable CAPS when leave insert mode to avoid anoying behavior
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    local _, _, caps_state = vim.fn.system("xset -q"):find("00: Caps Lock:%s+(%a+)")
    if caps_state == "on" then
      vim.fn.system("xdotool key Caps_Lock")
    end
  end,
})
-- Strip trailing spaces
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.py", "*.lua" },
  command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.keymap.set("n","<esc>", "<cmd>cclose<cr>", { silent = true, buffer = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.keymap.set("n","<esc>", "<cmd>bd<cr>", { silent = true, buffer = true })
  end,
})

vim.api.nvim_command([[
    autocmd FileType qf nnoremap <buffer><silent><esc> :cclose<CR>
    autocmd FileType help nnoremap <buffer><silent><esc> :bd<cr>
]])


function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('n', '<esc>', [[<cmd>close<cr>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
vim.cmd("autocmd BufEnter * if &buftype ==# 'terminal' | startinsert! | endif")
