--Alias --
local g = vim.g
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd


map('n', '<leader>e', ':CocCommand explorer <CR>', default_opts)
