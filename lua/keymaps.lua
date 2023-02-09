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
map('n', '<A-h>', '<C-w>h',{})
map('n', '<A-j>', '<C-w>j',{})
map('n', '<A-k>', '<C-w>k',{})
map('n', '<A-l>', '<C-w>l',{})

--Insert mode --
map('i', 'jk', '<Esc>', default_opts)
map('i', '<A-h>', '<C-\\><C-n><C-w>h',{})
map('i', '<A-j>', '<C-\\><C-n><C-w>j',{})
map('i', '<A-k>', '<C-\\><C-n><C-w>k',{})
map('i', '<A-l>', '<C-\\><C-n><C-w>l',{})

--Visual mode --
map('v', '<', '<gv', default_opts)
map('v', '>', '>gv', default_opts)

--Terminal mode --
map('t', 'jk', '<C-\\><C-n>', default_opts)
map('t', '<A-h>', '<C-\\><C-n><C-w>h',{})
map('t', '<A-j>', '<C-\\><C-n><C-w>j',{})
map('t', '<A-k>', '<C-\\><C-n><C-w>k',{})
map('t', '<A-l>', '<C-\\><C-n><C-w>l',{})


--Integrated explorer --
--map('n', '<leader>e', ':40Lexplore<CR>', default_opts)


--Integrated terminal --
map('n', '<leader>sh', ':edit term://sh<CR>', default_opts)


