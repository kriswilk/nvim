vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

local symbols = require("symbols")

require("gitsigns").setup({
    signs = {
        add = { text = symbols.gitsign },
        change = { text = symbols.gitsign },
        delete = { text = symbols.gitsign },
        topdelete = { text = symbols.gitsign },
        changedelete = { text = symbols.gitsign },
        untracked = { text = symbols.gitsign },
    },
    signs_staged = {
        add = { text = symbols.gitsign },
        change = { text = symbols.gitsign },
        delete = { text = symbols.gitsign },
        topdelete = { text = symbols.gitsign },
        changedelete = { text = symbols.gitsign },
        untracked = { text = symbols.gitsign },
    },
})
