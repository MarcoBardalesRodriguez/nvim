--Alias --
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local set = vim.opt

--UI --
set.number = true
set.relativenumber = true
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.showcmd = true
set.encoding = 'UTF-8'
set.ruler = true
set.showmatch = true
set.sw = 2
set.backspace = '2'
set.laststatus = 2
set.hidden = true

--set.go += 'a'
--set.nobackup = true
--set.nowritebackup = true
--set.shortmess += 'c'
--set guioptions-=T
--set guioptions-=L
--set cmdheight=1
