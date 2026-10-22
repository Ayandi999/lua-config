-- Compiler path for Treesitter / C builds
vim.env.CC = "D:\\gcc\\bin\\gcc.exe"

-- General options
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Indentation settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Windows Git Bash shell configuration
if vim.fn.has("win32") == 1 then
  vim.opt.shell = [["C:/Program Files/Git/bin/bash.exe"]]
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellxquote = ""
end
