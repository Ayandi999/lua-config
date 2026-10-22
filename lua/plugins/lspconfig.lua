return {
  {
    "mason-org/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "html",
          "cssls",
          "ts_ls",
          "pyright",
        },
      })

      -- LSP keymaps attached to active LSP buffers
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover({
              border = "rounded",
              max_width = 80,
              max_height = 20,
            })
          end, vim.tbl_extend("force", opts, { desc = "Hover for more information" }))

          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action,
            vim.tbl_extend("force", opts, { desc = "LSP Code Actions" }))
        end,
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
          },
        },
      })
      vim.lsp.config("html", {})
      vim.lsp.config("cssls", {})
      vim.lsp.config("ts_ls", {})
      vim.lsp.config("pyright", {})

      vim.lsp.enable({
        "lua_ls",
        "html",
        "cssls",
        "ts_ls",
        "pyright",
      })
    end,
  },
}
