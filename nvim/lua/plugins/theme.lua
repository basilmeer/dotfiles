-- the colorscheme should be available when starting Neovim
return {
  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local everforest = require("everforest")
      everforest.setup({
	background = "hard",
	italics = true,
      })
      vim.cmd([[colorscheme everforest]])
    end,
  }
}
