-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.autoindent = true
opt.clipboard = ""
opt.listchars = {
  tab = "» ",
  extends = "…",
  precedes = "…",
  nbsp = "␣",
  trail = "·",
}
opt.mouse = ""
opt.shortmess:append({ W = true, I = true, c = true, C = true, s = true })
opt.showbreak = "↪ " -- nowrap by default, but useful when wrap is deliberately toggled on
-- opt.showmatch = true
opt.smarttab = false
opt.startofline = false
