local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

require("telescope").load_extension("recent_files")

vim.api.nvim_set_keymap("n", "<Leader>fr",
[[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
{noremap = true, silent = true})

require("telescope").setup {
    defaults = {
        -- Your regular Telescope's options.
    },
    extensions = {
        recent_files = {
            only_cwd = true,

        }
    }
}
