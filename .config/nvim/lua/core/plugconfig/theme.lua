vim.o.termguicolors = true

require('gruvbox').setup({
    contrast = "hard",
})

vim.cmd [[ colorscheme kanagawa ]]
vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')
