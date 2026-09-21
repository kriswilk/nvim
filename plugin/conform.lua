vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local u = require("utils")

require("conform").setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        kdl = { "kdlfmt" },
        lua = { "stylua" },
        markdown = { "prettier" },
        nix = { "nixfmt" },
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
        rust = { "rustfmt" },
    },
    formatters = {
        stylua = {
            prepend_args = { "--indent-type", "Spaces", "--indent-width", "4" },
        },
    },
})

-- KEYMAPS

u.key({ "n", "v" }, "<leader>lf", function()
    require("conform").format()
end, { desc = "Format file or selection (conform)" })
