vim.opt.encoding = 'utf-8'

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- indenting, tabs, spaces, etc
vim.opt.autoindent = true
vim.opt.smartindent = true
--
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes:1"
-- vim.opt.statuscolumn = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3

vim.opt.showcmd = true
vim.opt.autoread = true
vim.laststatus = 2
vim.opt.splitbelow = true

vim.g.loaded_matchparen = 1

-- lsp configuration
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  -- update_in_insert = true,
  severity_sort = false,
})

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 100
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

--------- end lsp config
