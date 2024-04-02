return {
  { "nvim-lua/plenary.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "folke/which-key.nvim",                       event = "VeryLazy" },
  { "kylechui/nvim-surround",                     event = "VeryLazy" },
  {
    "numToStr/Comment.nvim",
    opts = function()
      return { pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook() }
    end,
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    requirements = {
      "nvim-lua/plenary.nvim",
    },
  },

  { "tpope/vim-fugitive", lazy = false },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
