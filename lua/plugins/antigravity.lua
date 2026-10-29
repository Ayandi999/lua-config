return {
	{
		"carlos-algms/agentic.nvim",
		opts = {
			provider = "antigravity-acp",

			acp_providers = {
				["antigravity-acp"] = {
					name = "Google Antigravity",
					command = "cmd.exe",
					args = {
						"/d",
						"/c",
						"google-antigravity-acp.cmd",
					},
				},
			},

			diff_preview = {
				enabled = true,
				layout = "inline",
				center_on_navigate_hunks = true,
			},

			keymaps = {
				widget = {
					change_mode = {
						{ "<S-Tab>", mode = { "n", "v" } },
					},
					switch_model = {
						{ "<localLeader>m", mode = { "n" } },
						{ "<leader>am", mode = { "n" } },
					},
					change_thought_level = {
						{ "<localLeader>t", mode = { "n" } },
						{ "<leader>at", mode = { "n" } },
					},
					open_options = {
						{ "<localLeader>o", mode = { "n" } },
						{ "<leader>ao", mode = { "n" } },
					},
				},
			},
		},
		config = function(_, opts)
			require("agentic").setup(opts)

			local file_picker = require("agentic.ui.file_picker")

			-- Exclude node_modules from ripgrep (rg), fd, and git
			vim.list_extend(file_picker.CMD_RG, {
				"--glob",
				"!node_modules/**",
				"--glob",
				"!**/node_modules/**",
			})
			vim.list_extend(file_picker.CMD_FD, {
				"--exclude",
				"node_modules",
			})
			vim.list_extend(file_picker.CMD_GIT, {
				"-x",
				"node_modules",
			})

			-- Exclude node_modules in fallback glob
			table.insert(file_picker.GLOB_EXCLUDE_PATTERNS, "node_modules")

			-- Filter out any node_modules paths from results as a safeguard
			local orig_scan_files = file_picker.scan_files
			file_picker.scan_files = function(self)
				local files = orig_scan_files(self)
				if files then
					local filtered = {}
					for _, item in ipairs(files) do
						if not item.word:lower():find("node_modules", 1, true) then
							table.insert(filtered, item)
						end
					end
					self._files = filtered
					return filtered
				end
				return files
			end
		end,
		keys = {
			{
				"<leader>aa",
				function()
					require("agentic").toggle()
				end,
				mode = { "n", "v" },
				desc = "Toggle Antigravity Chat",
			},
		},
	},
}
