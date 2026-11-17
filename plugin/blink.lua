vim.pack.add({ 'https://github.com/saghen/blink.lib', 'https://github.com/saghen/blink.cmp' })
local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
    keymap = {
        preset = 'none',
        -- Open menu manually with Ctrl+Space
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        -- ONLY accept/fill the selection when pressing Enter
        ['<CR>'] = { 'accept', 'fallback' },
        -- Use Tab and Shift-Tab to move up and down the menu safely
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' }
    },
    completion = { list = { selection = { preselect = false, auto_insert = false } } }
})
