local bufremove = require('mini.bufremove')
bufremove.setup()
vim.keymap.set("n", "<leader>c",  function()
       bufremove.delete()
end)

require('mini.comment').setup()

require('mini.cursorword').setup({
       delay = 200,
})

-- vim.cmd [[
--        hi! MiniCursorWordCurrent guifg=None guibg=#626c80 gui=None cterm=None
-- ]]


-- require('mini.starter').setup()
-- local starter = require('mini.starter')
-- starter.setup({
--        evaluate_single = true,
--        items = {
--               starter.sections.builtin_actions(),
--               starter.sections.recent_files(10, false),
--               starter.sections.recent_files(10, true),
--               -- Use this if you set up 'mini.sessions'
--               starter.sections.sessions(5, true)
--        },
--        content_hooks = {
--               starter.gen_hook.adding_bullet(),
--               starter.gen_hook.indexing('all', { 'Builtin actions' }),
--               starter.gen_hook.padding(3, 2),
--        },
-- })
-- vim.api.nvim_create_autocmd("User", {
--       pattern = "LazyVimStarted",
--       callback = function()
--         pcall(starter.refresh)
--       end,
--       })
-- require('mini.statusline').setup()
require('mini.surround').setup()
require('mini.pairs').setup()

