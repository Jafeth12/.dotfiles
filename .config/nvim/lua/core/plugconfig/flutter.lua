require("flutter-tools").setup {} -- use defaults

require('telescope').load_extension('flutter')

vim.keymap.set('n', '<leader>ff', function()
        require('telescope').extensions.flutter.commands()
    end, { noremap = true, silent = true })

