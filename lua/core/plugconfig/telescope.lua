local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>fs', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
