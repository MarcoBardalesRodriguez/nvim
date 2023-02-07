--Alias --
local g = vim.g
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

--General --
g.mapleader = ' '

--X mode --
map('x', 'K', ':move \'<-2<CR>gv-gv', default_opts)
map('x', 'J', ':move \'>+1<CR>gv-gv', default_opts)


--Normal mode --
map('n', '<leader>w', ':w <CR>', default_opts)
map('n', '<leader>q', ':q <CR>', default_opts)
map('n', '<leader>lu', ':luafile % <CR>', default_opts)
map('n', '<leader><space><space>', ':noh <CR>', default_opts)

--Insert mode --
map('i', 'jk', '<Esc>', default_opts)

--Visual mode --
map('v', '<', '<gv', default_opts)
map('v', '>', '>gv', default_opts)


--Temporal explorer --
--map('n', '<leader>e', ':40Lexplore<CR>', default_opts)



