vim.g.mapleader = " "      -- global leader
vim.g.maplocalleader = " " -- local leader

local mapKey = require("utils.keymapper").mapKey

-- Neotree toggle
mapKey('<C-o>', ':Neotree position=left dir=%:p:h:h toggle<CR>')

-- pane navigation
mapKey('<C-h>', '<C-w>h') -- Left
mapKey('<C-j>', '<C-w>j') -- Down
mapKey('<C-k>', '<C-w>k') -- Up
mapKey('<C-l>', '<C-w>l') -- Rigth

-- buffer navigation
mapKey('<C-n>', ':bp<CR>') -- priv
mapKey('<C-m>', ':bn<CR>') -- next
mapKey('<C-q>', ':bd<CR>') -- close

-- clear search hi
mapKey('<leader>h', ':nohlsearch<CR>')

-- indent
mapKey('<', '<gv', 'v')
mapKey('>', '>gv', 'v')
