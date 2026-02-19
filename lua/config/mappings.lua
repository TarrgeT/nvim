local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map('', '<SPACE>', '<Nop>')
map('v', '<Tab>', '>gv')
map('v', '<S-Tab>', '<gv')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>t', ':NvimTreeToggle<CR>')
