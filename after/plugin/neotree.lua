require("neo-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
    window = {
        position = "left",
        width = 40,
        mapping_options = {
            noremap = true,
            nowait = true,
        },
        follow_current_file = true, -- This will find and focus the file in the active buffer every
        hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
    }
})

vim.keymap.set("n", "<F5>", ":NeoTreeReveal<CR>")