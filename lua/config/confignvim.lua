local opt = vim.opt
local wo = vim.wo

wo.number = true
wo.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
vim.notify = require("notify")
