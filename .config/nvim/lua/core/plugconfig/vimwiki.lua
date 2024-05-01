vim.g.vimwiki_list = {
    {
        path = '~/Documents/vimwiki/',
--         syntax = 'markdown',
--         ext = '.md',
    },
}

-- vim.g.vimwiki_key_mappings = {
--     links = 0
-- }

vim.g.vimwiki_global_ext = 0


vim.keymap.set('n', '<leader>op', '<cmd>bn<CR>')
vim.keymap.set('n', '<leader>po', '<cmd>bp<CR>')
-- vim.keymap.set('n', '<leader>l', ':VimwikiFollowLink<CR>')
-- vim.keymap.set('n', '<leader>nl', ':VimwikiNextLink<CR>')
-- vim.keymap.set('n', '<leader>ml', ':VimwikiPrevLink<CR>')
