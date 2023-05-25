require('lualine').setup{
    options= {
        component_separators = '',
        section_separators = '',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {{'filename', path = 1}},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'}
    },
}
