--Alias --
local g = vim.g
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd


map('i', '<TAB>', 'pumvisible() ? "<C-N>" : "<TAB>"', { expr = true })
map('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<TAB>"', { expr = true } )

map('i', '<CR>', 'pumvisible() ? "<CR>" : coc#pum#confirm()', { expr = true, silent = true } )
map('i', '<CR><CR>', '<CR>', { silent = true } )


map('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })
map('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
map('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
map('n', 'gr', '<Plug>(coc-references)', { noremap = false })
