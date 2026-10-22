return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	opts = {
		options = {
			mode = "buffers",
			numbers = "ordinal",
			separator_style = "slant",
			show_buffer_close_icons = true,
			show_close_icon = false,
			color_icons = true,
			diagnostics = "nvim_lsp",
			always_show_bufferline = true,
		},
	},

	keys = {
		-- Switch between buffers (tabs) using Shift+H / Shift+L or [b / ]b
		{ "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
		{ "<S-l>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
		{ "[b", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
		{ "]b", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },

		-- Close current buffer
		{ "<leader>bd", "<Cmd>bdelete<CR>", desc = "Close buffer" },

		-- Jump directly to a buffer by number
		{ "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>" },
		{ "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>" },
		{ "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>" },
		{ "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>" },
	},
}
