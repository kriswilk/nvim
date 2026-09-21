vim.pack.add({ "https://github.com/luukvbaal/statuscol.nvim" })

local symbols = require("symbols")
local builtin = require("statuscol.builtin")

require("statuscol").setup({
    bt_ignore = {
        "nofile",
        "terminal",
    },
    segments = {
        {
            text = { " ", builtin.lnumfunc },
        },
        {
            sign = {
                namespace = { "diagnostic" },
                colwidth = 1,
            },
            click = "v:lua.ScSa",
        },
        {
            sign = {
                namespace = { "gitsigns" },
                colwidth = 1,
                wrap = true,
                fillchar = symbols.gitsign,
                fillcharhl = "GitSignFill",
            },
            click = "v:lua.ScSa",
        },
        {
            text = { builtin.foldfunc },
            click = "v:lua.ScFa",
        },
    },
})
