-- the colorscheme should be available when starting Neovim
return {
  "lexrupy/doom-one.nvim",
  opts = function()
    vim.g.doom_one_cursor_coloring = true
    vim.g.doom_one_terminal_colors = true
    vim.g.doom_one_italic_comments = false
    vim.g.doom_one_enable_treesitter = true
    vim.g.doom_one_diagnostics_text_color = false
    vim.g.doom_one_transparent_background = false
    vim.g.doom_one_pumblend_enable = false
    vim.g.doom_one_pumblend_transparency = 20
    vim.g.doom_one_plugin_neorg = false
    vim.g.doom_one_plugin_barbar = false
    vim.g.doom_one_plugin_telescope = true
    vim.g.doom_one_plugin_lspsaga = false
  end,
  config = function()
    vim.cmd("colorscheme doom-one")
  end,
}
