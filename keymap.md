# Neovim Keybindings Reference

> **Leader Key**: `<Space>`  
> **Local Leader**: `\`  
> *(Note: `<C-x>` means `Ctrl + x`, `<S-x>` means `Shift + x`, and `<leader>` means `Space`)*

---

## 🧭 File Navigation & Search (Telescope)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<leader>ff` | `n` | Find files by name | [telescope.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/telescope.lua) |
| `<leader>fg` | `n` | Live grep (search text inside files) | [telescope.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/telescope.lua) |

---

## 📂 File Tree Explorer (Neo-tree)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<C-b>` | `n` | Toggle file tree sidebar | [neotree.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/neotree.lua) |

---

## 📑 Buffer & Tab Management (Bufferline)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<S-h>` or `[b` | `n` | Cycle to previous buffer/tab | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| `<S-l>` or `]b` | `n` | Cycle to next buffer/tab | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| `<leader>bd` | `n` | Close / delete current buffer | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| `<leader>1` | `n` | Jump directly to buffer 1 | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| `<leader>2` | `n` | Jump directly to buffer 2 | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| `<leader>3` | `n` | Jump directly to buffer 3 | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |
| `<leader>4` | `n` | Jump directly to buffer 4 | [tabs.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/tabs.lua) |

---

## 💻 Terminal (ToggleTerm)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<C-\>` | `n`, `i`, `t` | Toggle default terminal | [toggle-terminal.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/toggle-terminal.lua) |
| `<leader>th` | `n` | Toggle horizontal terminal | [toggle-terminal.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/toggle-terminal.lua) |
| `<leader>tv` | `n` | Toggle vertical terminal | [toggle-terminal.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/toggle-terminal.lua) |
| `<leader>tf` | `n` | Toggle floating terminal window | [toggle-terminal.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/toggle-terminal.lua) |

---

## 🧠 Code Intelligence & LSP
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `K` | `n` | Hover documentation / signature info | [lspconfig.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua) |
| `<leader>ca` | `n`, `v` | Open LSP code actions | [lspconfig.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/lspconfig.lua) |

---

## 🎨 Code Formatting
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<leader>f` | `n`, `v` | Format current file (Conform / Prettier / Stylua) | [prittier.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/prittier.lua) |
| `<leader>gf` | `n` | Format buffer via LSP / Null-ls | [none_ls.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/none_ls.lua) |

---

## 🤖 AI Assistant (Google Antigravity / Agentic)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<leader>aa` | `n`, `v`, `i` | Toggle Antigravity AI chat panel (attaches visual selection in `v` mode) | [antigravity.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua) |
| `<S-Tab>` | `n`, `v`, `i` | Cycle Agent Mode (inside chat panel) | [antigravity.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua) |
| `<leader>am` or `\m` | `n`, `i` | Select AI Model (inside chat panel) | [antigravity.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua) |
| `<leader>at` or `\t` | `n`, `i` | Select Thought / Effort Level (inside chat panel) | [antigravity.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua) |
| `<leader>ao` or `\o` | `n`, `i` | Open Agent Options modal (inside chat panel) | [antigravity.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/antigravity.lua) |

> 💡 **Attaching Context & Files**:
> - In the chat prompt buffer, type `@` to fuzzy search and attach any project file to the agent prompt.
> - Select lines in **Visual mode** (`v` or `V`) and press `<leader>aa` to automatically send the highlighted code snippet and file path into the chat context.

---

## 🌿 Git & Change Review (Gitsigns)
*(Used to inspect, accept, or reject agent modifications hunk-by-hunk)*
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `]c` | `n` | Jump to next changed hunk | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `[c` | `n` | Jump to previous changed hunk | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hp` | `n` | Preview hunk diff in a popup | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hd` | `n` | View full buffer diff against git index | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hs` | `n` | **Accept (stage)** current hunk | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hr` | `n` | **Reject (undo/revert)** current hunk | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hs` | `v` | **Accept (stage)** selected lines in visual mode | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hr` | `v` | **Reject (undo/revert)** selected lines in visual mode | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hS` | `n` | **Accept (stage)** all changes in buffer | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hR` | `n` | **Reject (undo/revert)** all changes in buffer | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |
| `<leader>hu` | `n` | Undo last staged/accepted hunk | [gitsigns.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/gitsigns.lua) |

---

## 📝 Markdown Tools (Render Markdown)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<leader>um` | `n` | Toggle Markdown inline rendering | [markdown.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/markdown.lua) |
| `<leader>mp` | `n` | Open Markdown preview | [markdown.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/markdown.lua) |

---

## ⚡ Autocompletion (nvim-cmp)
*(Active when typing in Insert mode)*
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<C-Space>` | `i` | Manually trigger completion menu | [completions.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| `<CR>` (Enter) | `i` | Confirm and select completion item | [completions.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| `<C-e>` | `i` | Abort / close completion menu | [completions.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| `<C-b>` | `i` | Scroll documentation popup up | [completions.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |
| `<C-f>` | `i` | Scroll documentation popup down | [completions.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/plugins/completions.lua) |

---

## 🔍 Search & Highlights (Core)
| Keybinding | Mode | Description | Defined In |
| :--- | :---: | :--- | :--- |
| `<leader>h` | `n` | Clear search highlight (`:nohlsearch`) | [keymaps.lua](file:///C:/Users/Ayandip/AppData/Local/nvim/lua/core/keymaps.lua) |

---

### Legend of Modes:
- `n`: **Normal mode** (default navigation mode)
- `v`: **Visual mode** (text selection)
- `i`: **Insert mode** (typing text)
- `t`: **Terminal mode** (interacting with embedded terminal)
