local g = vim.g
local set = vim.opt


set.showtabline = 2					--Always show tab

g['airline_theme'] = 'dark'

g['airline_left_sep'] = ''
g['airline_right_sep'] = ''

g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tabline#left_sep'] = ''
g['airline#extensions#tabline#right_sep'] = ''
