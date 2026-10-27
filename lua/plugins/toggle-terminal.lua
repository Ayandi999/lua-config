return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = function(term)
					if term.direction == "vertical" then
						return math.floor(vim.o.columns * 0.4)
					end
					return 15
				end,

				open_mapping = [[<C-\>]],
				direction = "horizontal",
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
				close_on_exit = false,
				auto_scroll = true,
			})

			local Terminal = require("toggleterm.terminal").Terminal

			local horizontal = Terminal:new({
				direction = "horizontal",
				dir = ".",
			})

			local vertical = Terminal:new({
				direction = "vertical",
				dir = ".",
			})

			local floating = Terminal:new({
				direction = "float",
				dir = ".",
			})

			vim.keymap.set("n", "<leader>th", function()
				horizontal:toggle()
			end, { desc = "Horizontal Terminal" })

			vim.keymap.set("n", "<leader>tv", function()
				vertical:toggle()
			end, { desc = "Vertical Terminal" })

			vim.keymap.set("n", "<leader>tf", function()
				floating:toggle()
			end, { desc = "Floating Terminal" })
		end,
	},
}
