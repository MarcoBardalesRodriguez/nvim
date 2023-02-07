--Alias --
local g = vim.g
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

--Buffers setup
map('n', '<TAB>', ':bnext<CR>', default_opts)
map('n', '<S-TAB>', ':bprevious<CR>', default_opts)
map('n', '<leader>bd', ':bdelete<CR>', default_opts)

