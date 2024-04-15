local set = vim.opt
local global = vim.g

global.loaded_netrw = 1
global.loaded_netrwPlugin = 1
set.hidden = true
set.splitright = true
set.splitbelow = true
set.autoread = true
set.mouse = "a"
set.path:append("**")
set.scrolloff = 2
set.relativenumber = true
set.number = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.clipboard = "unnamedplus"
set.termguicolors = true

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end
