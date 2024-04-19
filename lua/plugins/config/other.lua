return {
  { "nvim-lua/plenary.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
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

}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
