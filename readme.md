# Neovim Configuration

Modular and lightweight Neovim setup powered by **lazy.nvim**, featuring LSP support, autocompletion, fuzzy finding, Git integration, and Google Antigravity AI assistant.

> **Leader Key**: `<Space>`  
> **Local Leader**: `\`

---

## 📦 Plugins & Libraries

| Plugin / Library | Purpose | Config File |
| :--- | :--- | :--- |
| [**lazy.nvim**](https://github.com/folke/lazy.nvim) | Modern plugin manager with lazy-loading support | [`lazy.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/config/lazy.lua) |
| [**catppuccin/nvim**](https://github.com/catppuccin/nvim) | Catppuccin Mocha theme | [`catppuccin.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/catppuccin.lua) |
| [**nvim-lualine/lualine.nvim**](https://github.com/nvim-lualine/lualine.nvim) | Minimal, fast statusline | [`lualine.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lualine.lua) |
| [**akinsho/bufferline.nvim**](https://github.com/akinsho/bufferline.nvim) | Tab/buffer line with numbering and LSP indicators | [`tabs.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| [**nvim-treesitter/nvim-treesitter**](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting and code parsing | [`treesitter.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/treesitter.lua) |
| [**nvim-neo-tree/neo-tree.nvim**](https://github.com/nvim-neo-tree/neo-tree.nvim) | Sidebar file tree explorer | [`neotree.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/neotree.lua) |
| [**nvim-telescope/telescope.nvim**](https://github.com/nvim-telescope/telescope.nvim) | Highly extensible fuzzy finder over lists, files, and text | [`telescope.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/telescope.lua) |
| [**telescope-ui-select.nvim**](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Sets Neovim's UI selection menus to use Telescope | [`telescope.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/telescope.lua) |
| [**akinsho/toggleterm.nvim**](https://github.com/akinsho/toggleterm.nvim) | Persisted floating, horizontal, and vertical terminals | [`toggle-terminal.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/toggle-terminal.lua) |
| [**neovim/nvim-lspconfig**](https://github.com/neovim/nvim-lspconfig) | Quickstart configs for Neovim built-in LSP client | [`lspconfig.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua) |
| [**mason-org/mason.nvim**](https://github.com/mason-org/mason.nvim) | Portable package manager for LSP servers, DAP servers, and linters | [`lspconfig.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua) |
| [**mason-lspconfig.nvim**](https://github.com/mason-org/mason-lspconfig.nvim) | Extension to make Mason and `lspconfig` work together seamlessly | [`lspconfig.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua) |
| [**tiny-inline-diagnostic.nvim**](https://github.com/rachartier/tiny-inline-diagnostic.nvim) | Modern, non-intrusive inline diagnostic messages | [`errorlens.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/errorlens.lua) |
| [**hrsh7th/nvim-cmp**](https://github.com/hrsh7th/nvim-cmp) | Completion engine framework | [`completions.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| [**cmp-nvim-lsp**](https://github.com/hrsh7th/cmp-nvim-lsp) / [**cmp-buffer**](https://github.com/hrsh7th/cmp-buffer) / [**cmp-path**](https://github.com/hrsh7th/cmp-path) | Completion sources for LSP, buffer words, and file paths | [`completions.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| [**LuaSnip**](https://github.com/L3MON4D3/LuaSnip) / [**cmp_luasnip**](https://github.com/saadparwaiz1/cmp_luasnip) | Snippet engine and completion integration | [`completions.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| [**friendly-snippets**](https://github.com/rafamadriz/friendly-snippets) | Pre-configured snippets for multiple languages | [`completions.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| [**stevearc/conform.nvim**](https://github.com/stevearc/conform.nvim) | Code formatter supporting Prettier, Stylua, and format-on-save | [`prittier.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/prittier.lua) |
| [**none-ls.nvim**](https://github.com/nvimtools/none-ls.nvim) | Injects LSP diagnostics, code actions, and formatting | [`none_ls.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/none_ls.lua) |
| [**lewis6991/gitsigns.nvim**](https://github.com/lewis6991/gitsigns.nvim) | Git gutter signs, diff viewing, and hunk staging/reverting | [`gitsigns.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| [**render-markdown.nvim**](https://github.com/MeanderingProgrammer/render-markdown.nvim) | In-buffer visual Markdown rendering and preview | [`markdown.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/markdown.lua) |
| [**agentic.nvim**](https://github.com/carlos-algms/agentic.nvim) | AI chat assistant integrated with Google Antigravity ACP | [`antigravity.lua`](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua) |
| [**plenary.nvim**](https://github.com/nvim-lua/plenary.nvim) / [**nui.nvim**](https://github.com/MunifTanjim/nui.nvim) / [**nvim-web-devicons**](https://github.com/nvim-tree/nvim-web-devicons) | UI and utility dependencies for Telescope, Neo-tree, and Bufferline | *Various* |

---

## ⌨️ Keymaps Reference

### 🧭 Navigation & Files
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `<leader>ff` | `n` | Find files ([Telescope](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/telescope.lua)) |
| `<leader>fg` | `n` | Live grep inside files ([Telescope](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/telescope.lua)) |
| `<C-b>` | `n` | Toggle file explorer sidebar ([Neo-tree](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/neotree.lua)) |
| `<leader>h` | `n` | Clear search highlight (`:nohlsearch`) |

### 📑 Buffers & Tabs ([Bufferline](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua))
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `<S-h>` or `[b` | `n` | Go to previous buffer |
| `<S-l>` or `]b` | `n` | Go to next buffer |
| `<leader>bd` | `n` | Close current buffer |
| `<leader>1` - `<leader>4` | `n` | Jump directly to buffer 1–4 |

### 💻 Terminal ([ToggleTerm](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/toggle-terminal.lua))
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `<C-\>` | `n`, `i`, `t` | Toggle default terminal |
| `<leader>th` | `n` | Toggle horizontal terminal |
| `<leader>tv` | `n` | Toggle vertical terminal |
| `<leader>tf` | `n` | Toggle floating terminal |

### 🧠 LSP & Code Intelligence
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `K` | `n` | Hover documentation ([lspconfig.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua)) |
| `<leader>ca` | `n`, `v` | LSP code actions ([lspconfig.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua)) |
| `<leader>f` | `n`, `v` | Format file with Conform / Prettier / Stylua ([prittier.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/prittier.lua)) |
| `<leader>gf` | `n` | Format buffer via LSP / Null-ls ([none_ls.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/none_ls.lua)) |

### 🌿 Git & Hunks ([Gitsigns](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua))
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `]c` / `[c` | `n` | Jump to next / previous changed hunk |
| `<leader>hp` | `n` | Preview hunk diff in popup |
| `<leader>hd` | `n` | Diff buffer against git index |
| `<leader>hs` | `n`, `v` | Stage current hunk / selected lines |
| `<leader>hr` | `n`, `v` | Revert / undo current hunk or selected lines |
| `<leader>hS` | `n` | Stage all changes in buffer |
| `<leader>hR` | `n` | Revert all changes in buffer |
| `<leader>hu` | `n` | Undo last staged hunk |

### 🤖 AI Assistant ([Google Antigravity / Agentic](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua))
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `<leader>aa` | `n`, `v`, `i` | Toggle AI chat panel (attaches visual selection in `v` mode) |
| `<S-Tab>` | `n`, `v`, `i` | Cycle Agent Mode (inside chat panel) |
| `<leader>am` or `\m` | `n`, `i` | Select AI Model (inside chat panel) |
| `<leader>at` or `\t` | `n`, `i` | Select Thinking / Effort Level (inside chat panel) |
| `<leader>ao` or `\o` | `n`, `i` | Open Agent Options modal (inside chat panel) |

### ⚡ Autocompletion ([nvim-cmp](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua))
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `<C-Space>` | `i` | Trigger completion menu |
| `<CR>` | `i` | Confirm selection |
| `<C-e>` | `i` | Close completion menu |
| `<C-b>` / `<C-f>` | `i` | Scroll docs popup up / down |

### 📝 Markdown ([Render Markdown](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/markdown.lua))
| Keybinding | Mode | Action |
| :--- | :---: | :--- |
| `<leader>um` | `n` | Toggle inline Markdown rendering |
| `<leader>mp` | `n` | Open Markdown preview |
