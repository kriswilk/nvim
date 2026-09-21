vim.pack.add({ "https://github.com/rachartier/tiny-inline-diagnostic.nvim" })

local u = require("utils")

require("tiny-inline-diagnostic").setup({
    options = {
        multilines = {
            enabled = true,
        },
    },
})

local severity = vim.diagnostic.severity

vim.diagnostic.config({
    severity_sort = true,
    signs = {
        numhl = {
            [severity.ERROR] = "DiagnosticNumberError",
            [severity.WARN] = "DiagnosticNumberWarn",
            [severity.HINT] = "DiagnosticNumberHint",
            [severity.INFO] = "DiagnosticNumberInfo",
        },
        text = {
            [severity.ERROR] = "❯",
            [severity.WARN] = "❯",
            [severity.HINT] = "❯",
            [severity.INFO] = "❯",
        },
    },
})

-- HIGHLIGHTS

u.hl("DiagnosticNumberError", { fg = "white" })
u.hl("DiagnosticNumberWarn", { fg = "white" })
u.hl("DiagnosticNumberHint", { fg = "white" })
u.hl("DiagnosticNumberInfo", { fg = "white" })
