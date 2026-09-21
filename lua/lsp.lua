vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                -- prevent warnings in nvim config files
                globals = { "vim" },
            },
        },
    },
})

vim.lsp.enable({
    "lua_ls",
    "nixd",
    "basedpyright",
    "rust_analyzer",
})
