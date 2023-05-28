require('lualine').setup {

    options = {
        icons_enabled = true,
        -- theme = 'horizon',
        theme = 'ayu',
    },

    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,

            }
        },

        -- lualine_b = {
        --     {
        --         'buffers',
        --             show_filename_only = true,
        --             hide_filename_extension = false,
        --             show_modified_status = true,
        --             mode = 1,
        --     }
        -- }
    },

    -- tabline = {
    --     lualine_a = {'buffers'},
    --     lualine_b = {'branch'},
    --     lualine_c = {'filename'},
    --     -- lualine_x = {},
    --     -- lualine_y = {},
    --     lualine_z = {'tabs'}
    -- }
}
