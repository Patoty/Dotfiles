vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

--vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')


-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- move line on screen instead of by file line
map('n', 'j', 'gj', {noremap = true, silent = true})
map('n', 'k', 'gk', {noremap = true, silent = true})
