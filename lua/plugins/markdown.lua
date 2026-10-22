return {
	{
		"MeanderingProgrammer/render-markdown.nvim",

		-- Load for normal Markdown and Agentic.nvim chat
		ft = { "markdown", "AgenticChat" },

		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},

		opts = {
			enabled = true,

			-- Include insert mode so rendering can work while chatting
			render_modes = { "n", "c", "t", "i" },

			-- Explicitly support the Agentic chat buffer
			file_types = { "markdown", "AgenticChat" },

			heading = {
				enabled = true,
				sign = true,
			},

			code = {
				enabled = true,
				style = "full",
				sign = true,
				language = true,
			},

			checkbox = {
				enabled = true,
			},

			bullet = {
				enabled = true,
			},

			pipe_table = {
				enabled = true,
				style = "full",
			},

			link = {
				enabled = true,
			},
		},

		keys = {
			{
				"<leader>um",
				"<cmd>RenderMarkdown toggle<cr>",
				desc = "Toggle Markdown Rendering",
			},
			{
				"<leader>mp",
				"<cmd>RenderMarkdown preview<cr>",
				desc = "Markdown Preview",
			},
		},
	},
}
