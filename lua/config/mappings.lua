local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map('', '<SPACE>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>t', ':NvimTreeToggle<CR>')
