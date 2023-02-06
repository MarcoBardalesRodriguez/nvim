--Alias
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

map('i', 'jk', '<Esc>', default_opts)

