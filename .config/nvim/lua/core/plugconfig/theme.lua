vim.o.termguicolors = true

require('gruvbox').setup({
    contrast = "hard",
})

vim.cmd [[ colorscheme gruvbox ]]
vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')
