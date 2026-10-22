return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    cmd = "Telescope",
    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "For finding files",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "For greping stuff",
      },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = require("telescope.themes").get_dropdown({
            previewer = false,
            initial_mode = "normal",
            layout_config = {
              width = 0.6,
              height = 0.4,
            },
          }),
        },
      })

      require("telescope").load_extension("ui-select")
    end,
  },
}
