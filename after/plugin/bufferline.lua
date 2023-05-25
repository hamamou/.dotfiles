local bufferline = require('bufferline')
bufferline.setup {
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
        themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
        indicator = {
            style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        color_icons = true,
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
    }
}

vim.keymap.set('n', 'gb', '<CMD>BufferLinePick<CR>')
vim.keymap.set('n', '<leader>ts', '<CMD>BufferLinePickClose<CR>')
vim.keymap.set('n', '<Tab>', '<CMD>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>')
vim.keymap.set('n', ']b', '<CMD>BufferLineMoveNext<CR>')
vim.keymap.set('n', '[b', '<CMD>BufferLineMovePrev<CR>')
vim.keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')
