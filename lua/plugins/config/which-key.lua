return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "", -- symbol used between a key and it's label
      group = "+", -- symbol prepended to a group
    },
  },
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()
    -- Document existing key chains
    require('which-key').register {
      ['<leader>b'] = { name = 'Buffers', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = 'Lsp', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = 'Debugger', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = 'Find', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = 'Trouble', _ = 'which_key_ignore' },
    }
  end,
}
