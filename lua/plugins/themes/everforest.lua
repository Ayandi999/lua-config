return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- Load before all other start plugins
    config = function()
      require("everforest").setup({
        background = "medium", -- Options: "hard", "medium", "soft"
        transparent_background_level = 0, -- 0 for normal, 1 or 2 for transparency
        italics = true,
      })
      vim.cmd.colorscheme("everforest")
    end,
  },
}
