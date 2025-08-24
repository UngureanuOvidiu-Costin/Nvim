-- Lazy Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.number = true

vim.opt.rtp:prepend(lazypath)
local opts = {}

    vim.g.mapleader = " "

require("lazy").setup("plugins")
require("vim-options")
