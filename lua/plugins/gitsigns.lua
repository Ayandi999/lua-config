return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
			signs_staged = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
			preview_config = {
				border = "rounded",
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
			on_attach = function(bufnr)
				local gs = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation between changed hunks
				map("n", "]c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]c", bang = true })
					else
						gs.nav_hunk("next")
					end
				end, { desc = "Next hunk" })

				map("n", "[c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gs.nav_hunk("prev")
					end
				end, { desc = "Previous hunk" })

				-- Review diff
				map("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk diff" })
				map("n", "<leader>hd", gs.diffthis, { desc = "Diff against git index" })

				-- Accept / Reject single hunk
				map("n", "<leader>hs", gs.stage_hunk, { desc = "Accept (stage) hunk" })
				map("n", "<leader>hr", gs.reset_hunk, { desc = "Reject (undo) hunk" })

				-- Accept / Reject selected lines in visual mode
				map("v", "<leader>hs", function()
					gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { desc = "Accept (stage) selected lines" })

				map("v", "<leader>hr", function()
					gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { desc = "Reject (undo) selected lines" })

				-- Accept / Reject entire buffer
				map("n", "<leader>hS", gs.stage_buffer, { desc = "Accept (stage) entire buffer" })
				map("n", "<leader>hR", gs.reset_buffer, { desc = "Reject (undo) entire buffer" })

				-- Undo last stage
				map("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo last accepted hunk" })
			end,
		},
	},
}
