vim.cmd("set clipboard=unnamed,unnamedplus")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set number")
vim.cmd("set shiftwidth=2")
vim.cmd("set list")
vim.cmd("set listchars=space:·,tab:-> ")
vim.g.mapleader = " "

require("config.lazy")

