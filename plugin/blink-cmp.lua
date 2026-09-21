-- TODO: how to properly reference the latest 1.x release? Switch to 2.x?
vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = "v1", name = "blink.cmp" },
})

require("blink.cmp").setup({
    keymap = {
        preset = "super-tab",
    },
    completion = {
        documentation = {
            auto_show = true,
        },
        -- list = {
        --     selection = {
        --         preselect = false,
        --     },
        -- },
        menu = {
            draw = {
                treesitter = { "lsp" },
            },
        },
    },
    signature = { enabled = true },
})
