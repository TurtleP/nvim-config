vim.g.mapleader = " "

vim.keymap.set('n', '<C-c>', 'nohl<CR>', { desc = "Clear search highlights", silent = true })

-- Navigate vertical splits left and right
vim.keymap.set('n', '<A-Left>', '<C-w>h', { desc = 'Go to left split' })
vim.keymap.set('n', '<A-Right>', '<C-w>l', { desc = 'Go to right split' })

-- Navigate horizontal splits up and down
vim.keymap.set('n', '<A-Up>', '<C-w>k', { desc = 'Go to upper split' })
vim.keymap.set('n', '<A-Down>', '<C-w>j', { desc = 'Go to lower split' })

-- Toggle inlay hints
vim.keymap.set("n", "<leader>th", function ()
    local is_enabled = not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 })
    vim.lsp.inlay_hint.enable(is_enabled, { bufnr = 0 })
    print(("Inlay Hints %s"):format(is_enabled and "enabled" or "disabled"))
end, { desc = "Toggle Inlay Hints" }
)

-- Normal Mode (Moves current line)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Insert Mode (Moves line and stays in insert mode)
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })

-- Visual Mode (Moves selected block of lines)
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Format the current buffer in Normal mode
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)
-- Pick a file via mini.pick
vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>b', ":Pick buffers<CR>")

-- Exit terminal mode with Esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
