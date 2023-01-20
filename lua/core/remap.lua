local function map(kind, lhs, rhs, opts)
    vim.api.nvim_set_keymap(kind, lhs, rhs, opts)
end

local snoremap = {noremap = true, silent = true}
-------------------------------------------------------------------------------

-- terminal
map('n', '<Leader>tt', '<cmd>:ToggleTerm<CR>', snoremap)
map('n', '<Leader>T', '<cmd>:split<CR><cmd>:bel term<CR>', snoremap)
map('t', '<Esc>', '<C-\\><C-n>', snoremap)

-- brackets, parenthesis, etc.
map('i', '{<CR>', '{<CR>}<Esc>ko', snoremap)
map('i', '[<CR>', '[<CR>]<Esc>ko', snoremap)
map('i', '(<CR>', '(<CR>)<Esc>ko', snoremap)

map('i', '{}', '{}<Right>', snoremap)
map('i', '[]', '[]<Right>', snoremap)
map('i', '()', '()<Right>', snoremap)
map('i', '""', '""<Right>', snoremap)

map('i', '(', '()<Left>', snoremap)
map('i', '{', '{}<Left>', snoremap)
map('i', '[', '[]<Left>', snoremap)
map('i', '"', '""<Left>', snoremap)

-- buffers
-- map('n', '<C-l>', '<C-w>l', snoremap)
-- map('n', '<C-k>', '<C-w>k', snoremap)
-- map('n', '<C-j>', '<C-w>j', snoremap)
-- map('n', '<C-h>', '<C-w>h', snoremap)
map('n', '<S-Tab>', '<cmd>bn<CR>', snoremap)
map('n', '<S-d>', '<cmd>bd<CR>', snoremap)

-- random useful stuff
map('i', '<C-c>', '<Esc>', snoremap)
map('n', '<Leader>a', 'A;<Esc>0w', snoremap)
map('n', '<Leader>wa', '<cmd>wa<CR>', snoremap)
map('n', '<Leader>qq', '<cmd>q<CR>', snoremap)
