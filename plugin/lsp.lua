vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

vim.lsp.config('emmylua', {
    filetypes = { 'lua' },
    cmd = { "emmylua_ls" }
})
vim.lsp.enable("emmylua")

vim.lsp.enable("rust_analyzer")
